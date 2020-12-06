//
// Created by wyz on 20-12-5.
//
#include <iostream>
#include <iomanip>
#include "TIFFStream.h"
int main()
{
  std::cout<<"Extract Volume Boundary"<<std::endl;
  TIFFStream tif_stream;
  std::string filepath="/run/media/wyz/New Volume1/14193/test_0";

  for(size_t i=1;i<=4834;i++){
    std::stringstream ss;
    ss<<filepath<<std::setw(4)<<std::setfill('0')<<i<<".tif";
//    std::cout<<ss.str()<<std::endl;
    tif_stream.read(ss.str());
    tif_stream.resample(8,8);
    tif_stream.write("/run/media/wyz/New Volume1/2.7T_Resample/test_"+std::to_string(i)+".tif");
  }


}
