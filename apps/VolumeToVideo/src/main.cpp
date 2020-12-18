#include <iostream>
#include "VolumeRaw2Video.h"
int main(int argc,const char** args) {
  VolumeRaw2Video cvt(args[1]);
  cvt.SetupArgs(voxer::StructuredGrid::Axis::Z,1,800);
  cvt.Convert("breast_z_800.mp4");

}