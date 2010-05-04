// DeformationGraph.cpp --- 
// copyright (c) 2010 dreamway
// 
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by the Free Software Foundation;
//  Feel free to contact dreamway(jingwenlai@163.com)
// 
// website: cg.xplore.cn
// 
// 

// Commentary: 
// 
//
#include "Common/glheaders.hpp"
#include "DeformationGraph.h"


/////////////DeformationGraphNode///////////////
DeformationGraphNode::DeformationGraphNode(  ) {
  //Default values
  R[ 0 ] = 1.0; R[ 1 ] = 0.0; R[ 2 ] = 0.0;
  R[ 3 ] = 0.0; R[ 4 ] = 1.0; R[ 5 ] = 0.0;
  R[ 6 ] = 0.0; R[ 7 ] = 0.0; R[ 8 ] = 1.0;

  t[ 0 ] = t[ 1 ] = t[ 2 ] = 0.0;
}

DeformationGraphNode::DeformationGraphNode( int id ) {
  id_ = id;
  //Default values
  R[ 0 ] = 1.0; R[ 1 ] = 0.0; R[ 2 ] = 0.0;
  R[ 3 ] = 0.0; R[ 4 ] = 1.0; R[ 5 ] = 0.0;
  R[ 6 ] = 0.0; R[ 7 ] = 0.0; R[ 8 ] = 1.0;

  t[ 0 ] = t[ 1 ] = t[ 2 ] = 0.0;
}

DeformationGraphNode::~DeformationGraphNode(  ) {
  neighbor_nodes_.clear(  );
}

void DeformationGraphNode::set_parent_deformation_graph( DeformationGraph* _graph ) {
  parent_graph_ = _graph;
}

void DeformationGraphNode::set_id( int _id ) {
  id_ = _id;
}
int DeformationGraphNode::id(  ) {
  return id_;
}

/*
DeformationGraphNode::DeformationGraphNode( const DeformationGraphNode& node ) {
  this->id_ = node.id(  );
  
  for( int i = 0; i < 9; i++ ) {
  this->R[ i ] = node.R[ i ];
  }
  for( int i = 0; i < 3; i++ ) {
  this->t[ i ] = node.t[ i ];
  }
  for (int i = 0; i < 3; ++i) {
  this->position_[ i ] = node.position_[ i ];
  }
  set<DeformationGraphNode,DeformationGraphNodeCmp>::iterator pNode;
  this->neighbor_nodes_.clear(  );
  for( pNode = neighbor_nodes_.begin(  ); pNode != neighbor_nodes_.end(  ); pNode++ ) {
  this->neighbor_nodes_.insert( *pNode );
  }
  }
*/

float DeformationGraphNode::node_size(  ) {
  return node_size_;
}
void DeformationGraphNode::set_node_size( float _size ) {
  node_size_ = _size;
}
void DeformationGraphNode::set_node_color( float _color[ 3 ] ) {
  node_color_[ 0 ] = _color[ 0 ];
  node_color_[ 1 ] = _color[ 1 ];
  node_color_[ 2 ] = _color[ 2 ];
}

void DeformationGraphNode::insert_neighbor_node( const int _neighbor_id ) {
  neighbor_nodes_.insert( _neighbor_id );
}


void DeformationGraphNode::renderNode(  ) {  
  glTranslatef( position_[ 0 ],position_[ 1 ],position_[ 2 ] );
  glColor3f( node_color_[ 0 ],node_color_[ 1 ],node_color_[ 2 ] );
  glutSolidSphere( node_size_, 10, 10 );
}

void DeformationGraphNode::renderConnection(  ) {
  printf("todo: glrendering\n"  );
  //Print neighbor nodes
  set<int>::iterator pNode;
  for ( pNode = neighbor_nodes_.begin(  );
        pNode != neighbor_nodes_.end(); ++pNode) {
    int id = *pNode;
    printf( "====selfId:%d<====>Node %d==========\n",id_,id );
    printf( "connection: ( %.2f,%.2f,%.2f ) <=> ( %.2f,%.2f,%.2f )\n",
            position_[ 0 ],position_[ 1 ],position_[ 2 ],
            parent_graph_->nodes_[ id ].position_[ 0 ],
            parent_graph_->nodes_[ id ].position_[ 1 ],
            parent_graph_->nodes_[ id ].position_[ 2 ]);
  }
}

void DeformationGraphNode::print(  ) {
  printf( "=============Node:%d=============\n",id_ );
  printf( "R:\n" );  
  for( int i = 0; i < 9; i++ ) {
    printf("%.2f\t ",R[ i ]);

    if( i%3 == 2 && i > 0 )
      printf( "\n" );
  }
  printf( "\n" );
  printf( "t: \t" );
  for( int i = 0; i < 3; i++ ) {
    printf("%.2f \t",t[ i ]);
  }
  printf( "\n" );
  printf( "position: \t" );
  for (int i = 0; i < 3; ++i) {
    printf("%.2f\t",position_[ i ]);
  }
  printf( "\n" );
  printf( "Neighbor nodes with id: \n" );
  //set<DeformationGraphNode,DeformationGraphNodeCmp>::iterator pNode;
  set<int>::iterator pNodeId;
  for( pNodeId = neighbor_nodes_.begin(  ); pNodeId != neighbor_nodes_.end(  ); pNodeId++ ) {
    int node_id = *pNodeId;
    printf("%d\t ( %.2f,%.2f,%.2f )",node_id,
           parent_graph_->nodes_[ node_id ].position_[ 0 ],
           parent_graph_->nodes_[ node_id ].position_[ 1 ],
           parent_graph_->nodes_[ node_id ].position_[ 2 ]           
           );
  }
  printf( "\n" );
}






/////////////DeformationGraph////////////////
DeformationGraph::DeformationGraph(  ) {
  nodes_.clear(  );
}

DeformationGraph::~DeformationGraph(  ) {
  nodes_.clear(  );
}


void DeformationGraph::construct( MeshCore* _mesh, int _target_number  ) {
  mesh_ = _mesh;
  num_nodes = _target_number;//note:it's just a temp number, actually, the algorithm could not just generate exteractly the number of nodes

  int num_vertices = mesh_->size_of_vertices(  );
  float ratio = (float)num_vertices/_target_number;

  float average_edge_length = mesh_->get_average_edge_length(  );
  float expected_tuncate_squared_length = average_edge_length*average_edge_length * ratio; //for efficiency: use the squared_length
    
  std::list<Point_3> searching_lists;
  searching_lists.clear(  );
  //init with all vertices
  for (Vertex_iterator pVertex = mesh_->vertices_begin(  );
       pVertex != mesh_->vertices_end(); pVertex++) {
    searching_lists.push_back( pVertex->point(  ) );
  }


  //loop this list and delete the points distance less than *expected_tuncate_length*
  std::list<Point_3>::iterator pBeginIterator = searching_lists.begin(  ),pSearchIterator;
  float distance;
  for(   ; pBeginIterator != searching_lists.end(); pBeginIterator++ ) {    
    pSearchIterator = pBeginIterator;
    pSearchIterator++;
    for(  ; pSearchIterator != searching_lists.end(  );  ) {
      distance = Vector_3( (*pSearchIterator)-(*pBeginIterator) ).squared_length(  );
      
      if( distance < expected_tuncate_squared_length ) {
        pSearchIterator = searching_lists.erase( pSearchIterator );
      }
      else
        pSearchIterator++;
    }
  }

  //now, all points stored in this list have ideal distances
  nodes_.clear(  );
  DeformationGraphNode node;
  int i = 0;
  for (std::list<Point_3>::iterator pPoint = searching_lists.begin(  );
       pPoint != searching_lists.end(); ++pPoint) {
    node.position_[ 0 ] = pPoint->x(  );
    node.position_[ 1 ] = pPoint->y(  );
    node.position_[ 2 ] = pPoint->z(  );
    node.set_id( i );
    nodes_.push_back( node );
    i++;
  }

  num_nodes = nodes_.size(  ); //this is the final number of deformation graph nodes
}

/**
   \brief: render the deformation graph
*/
void DeformationGraph::render(  ) {
  for (vector<DeformationGraphNode>::iterator pNode = nodes_.begin(  );
       pNode != nodes_.end(  ); ++pNode) {
    pNode->renderNode(  );
    pNode->renderConnection(  );
  }
}



//  
// 
// DeformationGraph.cpp ends here
