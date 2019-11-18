#include <path_planning/PathPlanner.h>

PathPlanner::PathPlanner(){
    ros::NodeHandle n;
    ROS_INFO("Path planner created...");

    //Receives road map data (see the callback function)
    roadmapSub = n.subscribe("roadmap_graph", 10,
                             &PathPlanner::initialize_roadmap_graph, this);

    ros::Rate r = ros::Rate(10);
    while(!is_ready) {
        ros::spinOnce();
        r.sleep();
    }

    generate_graph();
    // cbs.graph_cbs = graph;
    this->newpathServer = n.advertiseService("path_planner/request_new_path", &PathPlanner::PathFinding, this);
    plannedpathPub =n.advertise<auto_smart_factory::PlannedPath>("path_planner/path", 10);
    rviz_pub =n.advertise<nav_msgs::Path>("rviz_pub", 10);

    ROS_INFO("Path planner initialized.");
}


void PathPlanner::initialize_roadmap_graph(const auto_smart_factory::RoadmapGraph &rmg) {

    is_ready = false;
    num_edges = rmg.num_edges;
    num_nodes = rmg.num_nodes;
    x_coords_int = rmg.x_coord_int;
    y_coords_int = rmg.y_coord_int;
    start_nodes = rmg.start_nodes;
    end_nodes = rmg.end_nodes;
    weight = rmg.lengths;
    height =rmg.height;
    width = rmg.width;
    coordinates = new Coordinates[num_nodes];
    int i = 0;
        for (auto it = rmg.coordinates.begin(); it != rmg.coordinates.end(); ++it) {
            coordinates[i].x = it->x;
            coordinates[i].y = it->y;
            i++;
        }
    is_ready = true;


    ROS_WARN("Graph parameters initialized in path planner.");
}

void  PathPlanner::generate_graph() {


    //create edges pairs for graph
    typedef std::pair<int, int> edge;
    edge edge_ary[num_edges];
        for (int i = 0; i < num_edges; i++) {
            edge_ary[i] = edge(start_nodes.at(i), end_nodes.at(i));
        }

    mygraph_t gh(num_nodes);

    WeightMap weightmaph = get(edge_weight, gh);
    
        for (std::size_t j = 0; j < num_edges; ++j) {
            edge_descriptor e;
            bool inserted;
            boost::tie(e, inserted) = add_edge(edge_ary[j].first, edge_ary[j].second, gh);
            weightmaph[e] = weight[j];
        }    
 
    // store copy of graph  be used in shortest path function;
    graph = gh;
    //ROS_INFO(graph);      
    //ROS_WARN("Graph initialized in path planner.");
             
}    


             
bool PathPlanner::PathFinding(auto_smart_factory::RequestNewPath::Request &req, auto_smart_factory::RequestNewPath::Response &res){
    ROS_INFO("in PathPlanner::PathFinding handles chunk request");
    double time_start = ros::Time::now().toSec();
    // @TODO: Here will be implemented for a proper path finding algorithm
    // init_table t;
    ROS_INFO("Checkpoint 1");

    double distance;
    ROS_INFO("Started Planning path for %s", req.agent_id.c_str());
    /*
    request.agent_id 
    request.next_chunk 
    request.start_node
    request.end_node 


    response.new_path_nodes ->array of point objects 
    response.main_path_length ->length of path 
    response.is_last_chunk
    */

    std::pair<vertex_iter, vertex_iter> vp1;
    std::pair<vertex_iter, vertex_iter> vp2;
    vertex_descriptor start;
    vertex_descriptor goal;
    int i=0;
    geometry_msgs::Point sp;
    geometry_msgs::Point ep;
    geometry_msgs::Point rand;
    ROS_INFO("Checkpoint 2");
    sp=req.start_node;
    ep=req.end_node;
    sg.first = sp;
    sg.second = ep;

    ROS_INFO("DG: Approch point X, Y: %f , %f", ep.x, ep.y);

    ROS_INFO("Checkpoint 4");


    double cb1 = 1000.0;
    double cb2 = 1000.0;
    bool inside;
    vertex_descriptor v;
    // for(int m=0;m<start_nodes.size();m++){
    //  if(coordinates[m].x==sp.x && coordinates[m].y==sp.y){
    //      start = start_nodes[m];
    //  }
    ROS_INFO("Checkpoint 1");
    for (vp1 = vertices(graph); vp1.first != vp1.second; ++vp1.first){
        // ROS_INFO("Checkpoint 2 %f",coordinates[index[*vp1.first]].x);
        // ROS_INFO("Checkpoint 2 -s %f",req.start_node.x);
        // ROS_INFO("Checkpoint 3 -s %f  %f",a,b);
        if(fabs(sp.x-coordinates[*vp1.first].x )<=0.25&& fabs(sp.y-coordinates[*vp1.first].y)<=0.25){
            //ROS_INFO("Checkpoint 3");
            ROS_INFO("start %f %f",coordinates[*vp1.first].x,coordinates[*vp1.first].y);
            start = *vp1.first;
            inside = true;
        }

    }
    if(!inside){
        for (vp1 = vertices(graph); vp1.first != vp1.second; ++vp1.first){
            if(fabs(sp.x-coordinates[*vp1.first].x )<=cb1 && fabs(sp.y-coordinates[*vp1.first].y)<=cb2){
                cb1 = fabs(sp.x-coordinates[*vp1.first].x );
                cb2 = fabs(sp.y-coordinates[*vp1.first].y );
                v = *vp1.first;

            }
        }
        start = v;

    }




    for (vp2 = vertices(graph); vp2.first != vp2.second; ++vp2.first){
    
        if(fabs(ep.x-coordinates[*vp2.first].x)<=0.25 && fabs(ep.y-coordinates[*vp2.first].y)<=0.25){
            goal = *vp2.first;
        }

    }

    bool cbs_flag =false; //change this flag to run cbs


    table[req.agent_id].second=true;
    table[req.agent_id].first.first= start;
    table[req.agent_id].first.second= goal;
    ROS_INFO("Before CBS");
    // CBSPlanner cbs(graph);
    CBSPlanner cbs;
    // ROS_INFO("After CBS");
    cbs.graph_cbs = graph;
    ROS_INFO("Final states %ld",final_states.size());
    cbs.path_map = final_states;
    cbs.path_map_v = final_states_v;    
    ROS_INFO("After CBS");

    if(cbs_flag){  
        ROS_INFO("inside cbs");  
        if(cbs.search(table, sg, coordinates)){
            ROS_INFO("Checkpoint 5");

            final_states = cbs.final_solution.pathmap;
            final_states_v = cbs.final_solution.pathmap_v;

            res.new_path_nodes = cbs.final_solution.pathmap[req.agent_id].second.first;
            // res.new_path_nodes.push_back(ep);
            res.main_path_length=res.new_path_nodes.size();
            ROS_INFO("Path lenght %d", res.main_path_length);


            if(  req.next_chunk ==true){
             res.is_last_chunk=true;
            }


            for(auto &point :res.new_path_nodes){
                ROS_INFO("DG: The mid points are: (%lf, %lf)",point.x,point.y);
            }
            double time_end = ros::Time::now().toSec();
            ROS_INFO("Time it takes to run the algorithm %lf",(time_end-time_start));
            fromPointsToPath(res.new_path_nodes,1000);


            return true;
        }}



else{
    ROS_INFO("inside A*");
    IndexMap index = get(vertex_index, graph);

    std::vector<mygraph_t::vertex_descriptor> p(num_vertices(graph));
    std::vector<cost> d(num_vertices(graph));
  try {
    // call astar named parameter interface
  ROS_INFO("stage3"); 
    astar_search_tree
      (graph, start,
       distance_heuristic<mygraph_t, cost, Coordinates*>
       (coordinates, goal),
       predecessor_map(&p[0]).distance_map(&d[0]).
       visitor(astar_goal_visitor<vertex_descriptor>(goal)));
    ROS_INFO("stage4"); 
  
  } catch(found_goal fg) { // found a path to the goal
    ROS_INFO("stage5");  
    std::list<vertex_descriptor> shortest_path;
    for(vertex_descriptor v = goal;; v = p[v]) {
      shortest_path.push_front(v);

      if(p[v] == v)
        break;
    }

    std::vector<geometry_msgs::Point> path;
    for(std::list<vertex_descriptor>::iterator it=shortest_path.begin(); it!=shortest_path.end();++it){
        std::pair<vertex_iter, vertex_iter> vp;
        for (vp = vertices(graph); vp.first != vp.second; ++vp.first){
            


            if(*vp.first==*it){
                geometry_msgs::Point rand;


                rand.x=coordinates[index[*vp.first]].x;
                rand.y=coordinates[index[*vp.first]].y;
                //ROS_INFO("DG: pushed point %f %f",rand.x, rand.y);
                path.push_back(rand);
            }
        }
    }
        
    

   // std::reverse(path.begin(),path.end());
    path.push_back(ep);
    //ROS_INFO("DG: goal %f %f",ep.x, ep.y);
    for(auto &point : path){
        ROS_INFO("DG: The mid points are: (%lf, %lf)",point.x,point.y);
    }
    res.new_path_nodes = path;
    res.main_path_length=res.new_path_nodes.size();
    ROS_INFO("Path lenght %d", res.main_path_length);
    if( req.next_chunk ==true){
        res.is_last_chunk=true;
    }
    

     fromPointsToPath(res.new_path_nodes,1000);
    double time_end = ros::Time::now().toSec();
    ROS_INFO("Time it takes to run the algorithm %lf",(time_end-time_start));

    return true;
  }
}





    return true;
}



void PathPlanner::fromPointsToPath(std::vector<geometry_msgs::Point> _points, int _rate){




     ROS_INFO("Publishing the points to a path0");


  ros::Rate loopRate(_rate);

  /**
  
   * A count of how many messages we have sent. This is used to create

   * a unique string for each message.

   */

    nav_msgs::Path pathMsg;
    int i=0;

    pathMsg.header.frame_id="map";



    for(auto &_point : _points){



        geometry_msgs::PoseStamped _pose;


        _pose.pose.position.x = _point.x;
        _pose.pose.position.y = _point.y;
        _pose.pose.position.z = 0;



        _pose.pose.orientation.x = 1;
        _pose.pose.orientation.y = 0;
        _pose.pose.orientation.y = 0;
        _pose.pose.orientation.z = 0;



        pathMsg.poses.push_back(_pose);


    }

    





    ROS_INFO("Publishing the points to a path1");



    rviz_pub.publish(pathMsg);

    ROS_INFO("Publishing the points to a path2");

    ros::spinOnce();

    loopRate.sleep();

  



}
