#include "../MeshCore/MeshCore.h"
#include <fstream>
#include <gtest/gtest.h>

class MeshCoreTest : public ::testing::Test
{
 protected:
  virtual void SetUp()
  {
    pMesh = new MeshCore();
  }
  virtual void TearDown()
  {
    delete pMesh;
  }

  MeshCore * pMesh;
};

TEST_F(MeshCoreTest,testInit)
{
  //do not need to add code here
}

TEST_F(MeshCoreTest,testMakeTetrahedron)
{
  Halfedge_handle h = pMesh->make_tetrahedron();
  EXPECT_EQ(true,pMesh->is_tetrahedron(h));
}

TEST_F(MeshCoreTest,testWriteTetrahedron)
{
  pMesh->make_tetrahedron();
  std::ofstream outFile("tetrahedron.off",std::ios::out);
  outFile<<(*pMesh);
}


  
  

			   