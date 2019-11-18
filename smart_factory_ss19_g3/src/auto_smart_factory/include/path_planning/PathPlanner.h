#ifndef PATHPLANNER_INCLUDED
#define PATHPLANNER_INCLUDED

#include <typeinfo>

#include "ros/ros.h"
#include "ros/topic.h"
#include <string>
#include <vector>
#include <map>
#include <list>
#include <exception>
#include <stdexcept>
#include <time.h>
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Twist.h"
#include <auto_smart_factory/PlannedPath.h>
#include <auto_smart_factory/InitPathPlanner.h>
#include <auto_smart_factory/RequestNewPath.h>
#include <auto_smart_factory/RoadmapGraph.h>
#include <boost/graph/random.hpp>
#include <boost/random.hpp>
#include <boost/heap/d_ary_heap.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/astar_search.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/graph/graphviz.hpp>
#include <boost/graph/properties.hpp>
#include <boost/property_map/property_map.hpp>
#include <boost/graph/named_function_params.hpp>
#include <sys/time.h>
#include <algorithm>
#include <iostream>
#include <fstream>
#include <sstream>
#include <math.h>
#include "nav_msgs/Path.h"

#include "std_msgs/String.h"

#include "nav_msgs/OccupancyGrid.h"

#include "geometry_msgs/Pose.h"

#include "std_msgs/Header.h"

#include "nav_msgs/MapMetaData.h"
#include <auto_smart_factory/RobotConfiguration.h>


#include <boost/config.hpp>
#include <boost/graph/isomorphism.hpp>

#include <boost/graph/graph_utility.hpp>
//#include "CBSPlanner.h"

using namespace boost;

using cost = double; // typedef for euclidean distance used in graph
// typedefs for generating graphs with boost
/*
 *  Adjacency list provides template parameters to select different configurations
 *  for graph.
 *             listS: represents the edge list for each of vertices.
 *             VecS:  represents the vertex list.
 *             undirectedS: selects graph type as undirected.
 *             no_property: this parameter can be used to specify internal property for vertex.
 *             property<edge_weight_t, cost>: Uses edge weight(euclidean distance) to select edge
 *  @TODO Students are free to create their own graph given the roadmap graph generated. Please refer
 *  to the generate_graph function.
 */

typedef adjacency_list<listS, vecS, undirectedS, no_property,
                            property<edge_weight_t, cost> > mygraph_t;
// struct VertexData
// {
//   std::string first_name;
//   int num;

//   // this is used in predecessor map. The type shouldn't really be
//   // hardcoded to int. Instead, it should be set to vertex_descriptor
//   // (perhaps via template). I use it directly here, to keep the examples
//   // below a little simpler.
//   int pred;

//   // this is used in distance map
//   int dist;
// };

// struct EdgeData
// {
//   std::string edge_name;
//   double dist;
// };

/*
 * Property_map: used to select the properties associated with graph edges and vertices.
 * In our case, we have edge weight associated with graph
 */
typedef property_map<mygraph_t, edge_weight_t>::type WeightMap;

// vertex_descriptor refers to vertices in boost graph.
typedef mygraph_t::vertex_descriptor vertex_descriptor;

// edge_descriptor refers to edges in boost graph
typedef mygraph_t::edge_descriptor edge_descriptor;

typedef graph_traits<mygraph_t>::vertex_iterator vertex_iter;
//typedef graph_traits<mygraph_t>::vertex_descriptor vertex_descriptor;

//ypedef property_map<mygraph_t, vertex_index_t>::type IdMap;

typedef property_map<mygraph_t, vertex_index_t>::type IndexMap;

typedef std::map<std::string, std::vector<cost>> d_map_table;
/*
 * Path Planner gives path chunks to the robot agents. It will be implemented with the strategies and planning
 * algorithms from the students.
 */
typedef std::pair<geometry_msgs::Point, geometry_msgs::Point> start_goal_point;
typedef std::map<std::string,std::pair<std::pair<vertex_descriptor,vertex_descriptor>,bool>> init_table;

// euclidean distance heuristic


typedef std::map <std::string,  std::pair< std::pair<double,double> , std::pair<std::vector<geometry_msgs::Point>,d_map_table  >> > PathMap_vertices;
typedef std::map <std::string,  std::pair< std::pair<double,double> , std::pair<std::list<vertex_descriptor>,d_map_table  >> >PathMap_vertices_v;


template <class Graph, class CostType, class LocMap>
class distance_heuristic : public astar_heuristic<Graph, CostType>
{
public:
  typedef typename graph_traits<Graph>::vertex_descriptor Vertex;
  distance_heuristic(LocMap l, Vertex goal)
    : m_location(l), m_goal(goal) {}
  CostType operator()(Vertex u)
  {
    CostType dx = m_location[m_goal].x - m_location[u].x;
    CostType dy = m_location[m_goal].y - m_location[u].y;
    return ::sqrt(dx * dx + dy * dy);
  }
private:
  LocMap m_location;//Coordinate
  Vertex m_goal;
};

struct found_goal {}; // exception for termination

// visitor that terminates when we find the goal
template <class Vertex>
class astar_goal_visitor : public default_astar_visitor
{
public:
  astar_goal_visitor(Vertex goal) : m_goal(goal) {}
  template <class Graph>
  void examine_vertex(Vertex u, Graph& g) {
    if(u == m_goal)
      throw found_goal();
  }

 
private:
  Vertex m_goal;
};


class PathPlanner{

public:

	PathPlanner();

    //virtual ~PathPlanner();

    /*
     * Generates graph using boost library from graph data received
     * from roadmap graph message
     * @TODO Students are free to create their own graph solutions
    */
    void generate_graph();
    void fromPointsToPath(std::vector<geometry_msgs::Point> _points, int _rate);
    struct Coordinates {
    double x, y;
    };  

  mygraph_t graph;
  // CBSPlanner cbs;
  Coordinates *coordinates;
  PathMap_vertices final_states;
  PathMap_vertices_v final_states_v;

protected:
    //graph parameters
	int num_nodes;
	int num_edges;
	std::vector<int> x_coords_int;
	std::vector<int> y_coords_int;
	std::vector<int> start_nodes;
	std::vector<int> end_nodes;
	std::vector<double> weight;
	double height;
	double width;
	bool is_ready = false;

  start_goal_point sg;


  // vertex_descriptor generate_vertex(mygraph_t& graph,vertex_descriptor& v, geometry_msgs::Point& p , coordinates coordinates );

  // list  of robots
  std::vector<std::string> robot_id;

  //callback function for Initialize service
  //bool initialize(auto_smart_factory::InitPathPlannerRequest &req, auto_smart_factory::InitPathPlannerResponse &res);

  // call back function for roadmap graph message
  void initialize_roadmap_graph(const auto_smart_factory::RoadmapGraph &rmg);
  init_table table;

  // Path planner publishes planned path to trafic monitor
	ros::Publisher plannedpathPub;
  ros::Publisher rviz_pub;

  // Subscriber to roadmap graph message
  ros::Subscriber roadmapSub;



  //Service for initializing the node
//ros::ServiceServer initServer;

  //Service for new path
	ros::ServiceServer newpathServer;

    // ID of this agent
	std::string agentID;

    /*
     * Service handler for a new path request. The request comes from an Agent (see Agent.cpp for the service call)
     * @TODO This method will be implemented for your own pathplanning algorithm. Hint: You will use the information
     * provided such as the roadmap graph generated and agentID and other data agent sends following the necessary
     * request inputs as below. But it is suggested to double-check the Agent.cpp if they are correctly provided.
     *      Args: req:
     *            next_chunk: a boolean variable: High if path if requested for first time otherwise low
     *            agent_id: id of robot which is requesting for a path.
     *            start_node, end node : Starting and final position of robot.
     *      Returns:res:
     *          Path: 
                chunk path: Path between first two consecutive random points: refer to
     *            report for  details.
     *          path_length: number of nodes in path
    */
	bool PathFinding(auto_smart_factory::RequestNewPath::Request &req,
		auto_smart_factory::RequestNewPath::Response &res);
};
class mycomparison
{
  bool reverse;
public:
  mycomparison(const bool& revparam=false)
    {reverse=revparam;}
  bool operator() (std::pair<double,vertex_descriptor>& lhs, std::pair<double,vertex_descriptor>& rhs) const
  {
    if (reverse) return (lhs.first>rhs.first);
    else return (lhs.first<rhs.first);
  }

};


/****************** CBS Section ********************/
 
class CBSPlanner{
 
 
public:
 
    CBSPlanner();
    PathPlanner::Coordinates *coordinates;
  
    std::map<std::string,geometry_msgs::Point> start;
    std::map<std::string,geometry_msgs::Point> goal;
 
    mygraph_t graph_cbs;
  
    std::map <std::string,  std::pair< std::pair<double,double> , std::vector <geometry_msgs::Point>> > PathMap;
  
    PathMap_vertices path_map; 

    PathMap_vertices_v path_map_v; 

    std::map<int,std::string> id_s;
 
    struct Solution
    {
        PathMap_vertices_v pathmap_v;
        PathMap_vertices pathmap;
        std::map<std::string,double> cost;   
    };

    Solution final_solution;
    struct Conflict
    {
        std::string agent1;
        std::string agent2;
        double time;
        double x1;
        double x2;
        double y1;
        double y2;
        vertex_descriptor v;
 
    };
 
    struct Constraints {
        mygraph_t graph;
        std::vector<vertex_descriptor> v;
        // Constraints(mygraph_t graph){
        //   graph = graph;
        // }
        // vertex_descriptor v;
        // std::string agentid;
        int num = 0;
        bool overlap(Constraints c){
            // std::vector<vertex_descriptor> f(num_vertices(graph));
            // IndexMap v1_index_map = get(vertex_index, graph),
            // v2_index_map = get(vertex_index, c.graph);
            // ROS_INFO("Map e b");
            // bool ret= isomorphism(graph, c.graph, isomorphism_map (make_iterator_property_map(f.begin(), v1_index_map, f[0])));
            // ROS_INFO("Map e a");
            // return ret;
          ROS_INFO("Inside overlap");
      for( auto it=c.v.begin();it!=c.v.end();++it){
        for(auto im=v.begin();im!=v.end();++im){
          if(*it==*im){
              ROS_INFO("It is overlapping");
              return true;

            } 
        }
      }
      return false;
      }
        void add(vertex_descriptor vin, mygraph_t graph_v){
          if(num==0){
          graph = graph_v;
            num++;
          
          }
          ROS_INFO("vertex added %ld",vin);
          ROS_INFO("Num of v in graph %ld",num_vertices(graph));
          // for(auto vp = vertices(graph);vp.first!=vp.second;++vp.first)
          // {
          //   ROS_INFO("MAP %ld",*vp.first);
          // }
          clear_vertex(vin,    graph);
          remove_vertex(vin,   graph);
          v.push_back(vin);
          // v = vin;
          std::pair<vertex_iter, vertex_iter> vp;


          ROS_INFO("Constraint added %ld",vin);
        }
    };


public:


    bool update_start(std::string AgentID, geometry_msgs::Point P);
    bool update_goal(std::string AgentID, geometry_msgs::Point P);
    bool update_path(std::string AgentID, std::vector <geometry_msgs::Point> Individual_Path ,double path_init_time,double TimeDur);
    bool update_path(std::string AgentID,  std::list<vertex_descriptor> Individual_Path ,double path_init_time,double TimeDur);
    bool getFirstConflict(Solution& p,Conflict& c);
    double  calculateTimeFromDistanceAndVelocity(int path_length, double min_linear_vel);
    bool check_conflicts(std::string AgentID);
    bool astar( mygraph_t& graph, init_table& init , Solution& pr ,start_goal_point& sg );
    void create_constraint_from_conflict(Conflict& c, std::map<std::string,Constraints>& constraints, mygraph_t graph);

    bool search( init_table& init ,start_goal_point& sg,PathPlanner::Coordinates *c);
    bool compare_paths_with_t(std::pair< std::pair<double,double> , std::pair<std::list<vertex_descriptor>,d_map_table  >> a, std::pair< std::pair<double,double> , 
    std::pair<std::list<vertex_descriptor>,d_map_table  >> b, Conflict& c,std::string agent1, std::string agent2);
    bool compare_paths_without_t(std::list<vertex_descriptor> a, std::list<vertex_descriptor> b , Conflict& c, std::string agent1, std::string agent2);    
private:
    struct HighLevelNode {

    double cost;
    int id;
    std::map<std::string, Constraints> constraints;

    Solution solution_set;
    typename boost::heap::d_ary_heap<HighLevelNode, boost::heap::arity<2>,
                                     boost::heap::mutable_<true> >::handle_type
        handle;

    bool operator<(const HighLevelNode& n) const {
      return cost > n.cost;
    }
   

    };




};

//***********************CBS Planner **************************************



#endif // PATHPLANNER_INCLUDED
