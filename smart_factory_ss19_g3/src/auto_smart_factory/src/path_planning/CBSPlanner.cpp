#include <path_planning/PathPlanner.h>

CBSPlanner::CBSPlanner(){
    
    ROS_INFO("CBS planner created...");
    // solution.pathmap = final_solution
    // id_s[1]="robot_1";
    // id_s[2]="robot_2";
    // id_s[3]="robot_3";
    // id_s[4]="robot_4";
    // id_s[5]="robot_5";
    // id_s[6]="robot_6";    
    // id_s[7]="robot_7";
    // id_s[8]="robot_8";
            
}



// bool CBSPlanner::update_start(std::string AgentID, geometry_msgs::Point start2){
//     ROS_INFO("CBS planner update_start...");

//     start[AgentID]=start2;
     
//     return true;

// }


// bool CBSPlanner::update_goal(std::string AgentID, geometry_msgs::Point goal2){

//     ROS_INFO("CBS planner update_goal...");

//     goal[AgentID]=goal2;
//     return true;
// }

// bool CBSPlanner::update_path(std::string AgentID, std::vector <geometry_msgs::Point> Individual_Path ,double path_init_time,double PathDur)
// {

//     std::pair<std::pair<double,double>, std::vector <geometry_msgs::Point>> temp;
//     ROS_INFO("CBS planner update_path...");
//     auto_smart_factory::RobotConfiguration robotcfg;
    

//     if(Individual_Path.empty()){
//         return false;
//     }
//     else{
//         double time_dur=calculateTimeFromDistanceAndVelocity(Individual_Path.size(), robotcfg.min_linear_vel);
//         temp.first.first=path_init_time;
//         temp.first.second=time_dur;
//         temp.second =Individual_Path;
//         PathMap[AgentID]=temp;
//     }   

//     return true;
// }

// bool CBSPlanner::update_path(std::string AgentID, std::list<vertex_descriptor> Individual_Path ,double path_init_time,double PathDur)
// {

//     std::pair<std::pair<double,double>, std::list<vertex_descriptor> > temp;
//     ROS_INFO("CBS planner update_path...");
//     auto_smart_factory::RobotConfiguration robotcfg;
    

//     if(Individual_Path.empty()){
//         return false;
//     }
//     else{
//         double time_dur=calculateTimeFromDistanceAndVelocity(Individual_Path.size(), robotcfg.min_linear_vel);
//         temp.first.first=path_init_time;
//         temp.first.second=time_dur;
//         temp.second = Individual_Path;
//         PathMap_vertices[AgentID]=temp;
//     }   

//     return true;
// }

bool CBSPlanner::compare_paths_without_t(std::list<vertex_descriptor> a, std::list<vertex_descriptor> b ,
 Conflict& c, std::string agent1, std::string agent2){

    ROS_INFO("compare_paths_without_t");

    if(a.size()>=b.size()){
        for(auto it=a.begin();it!=a.end();++it){
            for(auto im=b.begin();im!=b.end();++im){
                if(*im==*it )
                    {
                    // c.agent1 = agent1;
                    // c.agent2 = agent2;
                    // c.time = (double)a.first.first+(a.second.second[agent1][*it]/0.5);
                    // c.v = *it;
                    ROS_INFO("Vertex with conflict %ld agent1 %s agent 2 %s",*im,c.agent1.c_str(),c.agent2.c_str());
                    return false;
                    }
                // else{
                //     return true;
                // }
            }
        }
    }

    else{
        for(auto it=b.begin();it!=b.end();++it){
            for(auto im=a.begin();im!=a.end();++im){
                if(*im==*it ){
                    // c.agent1 = agent1;
                    // c.agent2 = agent2;
                    // c.time = (double)a.first.first+(a.second.second[agent1][*it]/0.5);
                    // c.v = *it;
                    ROS_INFO("Vertex with conflict %ld agent1 %s agent 2 %s",*im,c.agent1.c_str(),c.agent2.c_str());
                    return false;//return false if a confict is found 
                }
                // else{
                //     return true;
                // }
            }
        }
    }
    return true;//return true if no conflicting vertex
}

bool CBSPlanner::compare_paths_with_t(std::pair< std::pair<double,double> , std::pair<std::list<vertex_descriptor>,d_map_table  >> a, std::pair< std::pair<double,double> , 
    std::pair<std::list<vertex_descriptor>,d_map_table  >> b, Conflict& c,std::string agent1, std::string agent2)
{
    ROS_INFO("compare_paths_with_t");



    for( auto it=a.second.first.begin();it!=a.second.first.end();++it){
        for(auto im=b.second.first.begin();im!=b.second.first.end();++im){
            if(*it==*im){ //consider a delta time 
                ROS_INFO("Inside %lf",a.first.first);
                // ROS_INFO("Time 1 %lf, Time 2 %lf",a.first.first+(a.second.second[agent1][*it]/0.5),b.first.first+(b.second.second[agent1][*it]/0.5));
                if(((a.first.first+(a.second.second[agent1][*it]/0.5))-(b.first.first+(b.second.second[agent2][*im]/0.5)))<2){
                    c.agent1 = agent1;
                    c.agent2 = agent2;
                    c.time = (double)a.first.first+(a.second.second[agent1][*it]/0.5);
                    c.v = *it;
                    ROS_INFO("Vertex with conflict with t=%lf is %ld agent1 %s agent 2 %s",c.time,c.v,c.agent1.c_str(),c.agent2.c_str());
                    return false;
                }

            }
        }
    }
}

double  CBSPlanner::calculateTimeFromDistanceAndVelocity(int path_length, double min_linear_vel){

    // auto_smart_factory::RobotConfiguration robotcfg;
    return path_length/min_linear_vel;

}


bool CBSPlanner::getFirstConflict(Solution& p,Conflict& c)
{
    // if( p.empty() || p.size()  ){
    //      return false;   
    // }s
    ROS_INFO("inside getFirstConflict");

    for(auto const& x : p.pathmap_v){

        for(auto const& y : p.pathmap_v){  
            ROS_INFO("inside getFirstConflict 1");

            ROS_INFO("Pathmap size = %ld",p.pathmap_v.size());
            if(p.pathmap.size()==1){
                return false;
            }     


            else if(x.first == y.first){
                ROS_INFO("Both agents equal %s %s",x.first.c_str(),y.first.c_str());
                continue;
                }//here
            else{
                ROS_INFO("inside getFirstConflict 2");
            
                if(compare_paths_without_t(x.second.second.first, y.second.second.first, c, x.first, y.first)){
            
                    return false;    
                }
            
                else{
            
                    if(p.pathmap_v[x.first].first.first<p.pathmap_v[y.first].first.second){
            
                        if(compare_paths_with_t(p.pathmap_v[x.first],p.pathmap_v[y.first],c,x.first,y.first)){
            
                            return false;

                        }
                        else{

                            return true;
                        }
                    }
                }
            }
        }
    }
    
    
    return true;
}

void CBSPlanner::create_constraint_from_conflict(Conflict& c, std::map<std::string,Constraints>& constraints, mygraph_t graph ){

    ROS_INFO("inside create_constraint_from_conflict");


    // ROS_INFO("inside inside");
    // bool t = true;
    // std::pair<vertex_iter, vertex_iter> vp;

    vertex_descriptor v = c.v;

    ROS_INFO("conflicting vertex %ld", v);
    // for (vp = vertices(g_temp); vp.first != vp.second; ++vp.first){
    //     ROS_INFO("vertex %ld",*vp.first);
    // }

    clear_vertex(v,  graph);
    remove_vertex(v, graph);
    ROS_INFO("inside inside");

    constraints[c.agent1].v.push_back(v);
    constraints[c.agent2].v.push_back(v);
    constraints[c.agent1].graph=graph;
    constraints[c.agent2].graph=graph;
    // constraints[c.agent1].add(g_temp1,v);
    // constraints[c.agent2].add(g_temp2,v);

    ROS_INFO("Inside create constraint from conflict end");

}


bool CBSPlanner::astar(mygraph_t& graph, init_table& init , Solution& pr ,start_goal_point& sg ){

    ROS_INFO("Inside A*");
    std::pair<vertex_iter, vertex_iter> vp;

    // for(auto vp = vertices(graph);vp.first!=vp.second;++vp.first)
    // {
    //     ROS_INFO("MAP %ld",*vp.first);
    // }
    ROS_INFO("Num of v in graph(A*) %ld",num_vertices(graph));

    std::string agent;
    double distance_traversed;
    vertex_descriptor start;
    vertex_descriptor goal;

    IndexMap index = get(vertex_index, graph);

    // init_table::iterator it;
    for (auto const& x : init)
    {
        if(x.second.second==true){
            agent = x.first;
            start=  x.second.first.first;
            goal=   x.second.first.second;            
        }   
    }

    std::vector<mygraph_t::vertex_descriptor> p(num_vertices(graph));
    std::vector<cost> d(num_vertices(graph));

    try {
    // call astar named parameter interface
    ROS_INFO("A* stage3"); 
    astar_search_tree
      (graph, start,
       distance_heuristic<mygraph_t, cost, PathPlanner::Coordinates*>
       (coordinates, goal),
       predecessor_map(&p[0]).distance_map(&d[0]).
       visitor(astar_goal_visitor<vertex_descriptor>(goal)));
    ROS_INFO("A* stage4"); 

    } catch(found_goal fg) { // found a path to the goal
    ROS_INFO("A* stage5");  
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
            


            if( *vp.first==*it ){
                geometry_msgs::Point rand;


                rand.x=coordinates[index[*vp.first]].x;
                rand.y=coordinates[index[*vp.first]].y;
                // ROS_INFO("DG: pushed point %f %f",rand.x, rand.y);
                path.push_back(rand);
                }
            }
        }
    
    distance_traversed = d[goal];

    double time_start = ros::Time::now().toSec();
    // std::reverse(path.begin(),path.end());
    path.push_back(sg.second);
    pr.pathmap[agent].second.first = path;
    pr.pathmap[agent].first.first = time_start;
    pr.pathmap[agent].first.second = time_start+(double)(distance_traversed/0.5);
    pr.cost[agent] = distance_traversed;
    pr.pathmap[agent].second.second[agent] = d;
//----------------------------------------------------------------
    pr.pathmap_v[agent].second.first = shortest_path;
    pr.pathmap_v[agent].first.first = time_start;
    pr.pathmap_v[agent].first.second = time_start+(double)(distance_traversed/0.5);
    pr.pathmap_v[agent].second.second[agent] = d;

//----------------------------------------------------------------
    if(path.size()>0){

    return true;
        }
    else{
        return false;
    }
    }

    return false;

}
// std::pair<double,vertex_descriptor> mycomparator(std::pair<double,vertex_descriptor> a, std::pair<double,vertex_descriptor> b)

bool CBSPlanner::search( init_table& init ,start_goal_point& sg,PathPlanner::Coordinates *c){
    ROS_INFO("Inside CBS");  
    ROS_INFO("Init table size %ld",init.size());
    // ROS_INFO("SG table size %ld",sg.size());
    coordinates = c;
    std::vector<cost> distance_map;
    double distance_traversed;
    
    HighLevelNode start;
    // start.solution_set.pathmap = sol;
    // start.solution_set;

    // start.solution.resize(p.size());
    start.cost = 0;
    start.id = 0;
    start.solution_set.pathmap= path_map;
    start.solution_set.pathmap_v= path_map_v;

    for (auto const& x : init){

    bool success = astar(graph_cbs, init, start.solution_set, sg);
    // ROS_INFO("After A*");
     if (!success) {
       return false;
        }
      // }
     start.cost += start.solution_set.cost[x.first];
    }

    ROS_INFO("CBS level1");


    typename boost::heap::d_ary_heap<HighLevelNode, boost::heap::arity<2>,
                                     boost::heap::mutable_<true> >
        open;

    auto handle = open.push(start);//Black box 
    (*handle).handle = handle;
    ROS_INFO("CBS level2");
    // solution.clear();
    int id = 1;
    while (!open.empty()) {
        HighLevelNode P = open.top();
        // m_env.onExpandHighLevelNode(P.cost); //
        // std::cout << "expand: " << P << std::endl;

        open.pop();

        Conflict conflict;
        if (!getFirstConflict(P.solution_set, conflict)) {
        // std::cout << "done; cost: " << P.cost << std::endl;
            ROS_INFO("CBS End");
            final_solution = P.solution_set;
            return true;
        }
        ROS_INFO("CBS level3");
        // // create additional nodes to resolve conflict
        // // std::cout << "Found conflict: " << conflict << std::endl;
        // // std::cout << "Found conflict at t=" << conflict.time << " type: " <<
        // // conflict.type << std::endl;

        // std::map<std::string, Constraints> constraints;
        std::map<std::string, Constraints> constraints_map; 

        create_constraint_from_conflict(conflict, constraints_map, graph_cbs);
        ROS_INFO("Inside CBS level4");
        ROS_INFO("Constraints %ld",constraints_map.size());
        // m_env.createConstraintsFromConflict(conflict, constraints);
        for (const auto& c : constraints_map) {
            std::string agent = c.first;
            HighLevelNode newNode = P;
            newNode.id = id;
            ROS_INFO("Inside CBS level5");
            if(!newNode.constraints[agent].overlap(c.second)){
                        ROS_INFO("Inside CBS level6");
                        newNode.constraints[agent].add(c.second.v.back(),graph_cbs);
                        ROS_INFO("Inside CBS level6");
                        ROS_INFO("Cost before = %lf",newNode.cost);
                        newNode.cost -= newNode.solution_set.cost[agent];
                        ROS_INFO("Inside CBS level7");
                        ROS_INFO("Num of v in graph(CBS) %ld",num_vertices(newNode.constraints[agent].graph));

                        bool success = astar(newNode.constraints[agent].graph, init, newNode.solution_set, sg);
                        ROS_INFO("Inside CBS level8");
                        newNode.cost += newNode.solution_set.cost[agent];
                        ROS_INFO("Cost After = %lf",newNode.cost);             
                        if (success) {
                          // std::cout << "  success. cost: " << newNode.cost << std::endl;
                          auto handle = open.push(newNode);
                          (*handle).handle = handle;
                        }
            
                        ++id;}
      }
    }

    return false;

}