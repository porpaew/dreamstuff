/* EDS.h --- The Main class for implemneting Embedded Deformation for Shape Manipulation algorithm
 * copyright (c) 2010 dreamway
 */

/* This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by the Free Software Foundation;
 *  Feel free to contact dreamway(jingwenlai@163.com)
 * 
 * website: cg.xplore.cn
 */

/* Commentary: 
 * 
 */
#ifndef _EDS_H_
#define _EDS_H_

#include <QObject>
#include <QWidget>
#include <QPushButton>

#include <boost/property_map.hpp>

#include "BasePlugin/BaseInterface.h"
#include "BasePlugin/ToolBoxInterface.h"
#include "BasePlugin/LoggingInterface.h"

#include "MeshCore/MeshCore.h"

#include "DeformationGraph.h"

/**
   \brief: the main class implementing EDS algorithm( Sumner siggraph 2007 )
*/
class EDS : public QObject,
            public BaseInterface,
            public ToolBoxInterface,
            public LoggingInterface            
{
 Q_OBJECT
  Q_INTERFACES( BaseInterface );
  Q_INTERFACES( ToolBoxInterface );
  Q_INTERFACES( LoggingInterface )
      
 public:
  EDS() {
    toolbox_widget_ = new QWidget(  );

    deformation_graph_ = new DeformationGraph(  );
    vertex_deformationgraphnodes_properties_ = boost::make_assoc_property_map<Vertex_DeformationGraphNodes_Map>( vertex_deformationgraphnodes_map_ );
  }
  ~EDS() {
    delete toolbox_widget_;
  }

  //BaseInterface
 public slots:
  void pluginInitialized(  ) {
    //    emit addToolBox( QString( tr( "EDS" ) ), toolbox_widget_ );
    emit log( QString( tr( "EDS Plugin initialized") ) );
    emit addToolBox( QString( tr( "EDS" ) ), toolbox_widget_ );
  }
 public:
  //BaseInterface
  QString description(  ) const {
    return QString( tr( "EDS Plugin description" ) );
  }

  QString name(  ) const {
    return QString( "EDSPlugin " );
  }
 signals:
  //LoggingInterface
  void log( const QString& logMessage );
  //ToolBoxInterface
  void addToolBox( QString, QWidget* );

 public:
  void setMesh( MeshCore* _mesh ) {
    mesh_ = _mesh;
  }

  
 private://algorithm related
  typedef std::vector<DeformationGraphNode> Vertex_DeformationGraphNode_Vector;
  //The Vertex's related K-nearest nodes
  typedef std::map<Vertex_handle,Vertex_DeformationGraphNode_Vector,VertexHandleCmp> Vertex_DeformationGraphNodes_Map;
  Vertex_DeformationGraphNodes_Map vertex_deformationgraphnodes_map_;
  boost::associative_property_map<Vertex_DeformationGraphNodes_Map> vertex_deformationgraphnodes_properties_;
  
  
  

 public:
  void construct_deformation_graph(  );
  //Internal data and widgets  
 private:
  MeshCore* mesh_;
  DeformationGraph* deformation_graph_;
 private:
  QWidget* toolbox_widget_;
};


#endif /* _EDS_H_ */
/* EDS.h ends here */



