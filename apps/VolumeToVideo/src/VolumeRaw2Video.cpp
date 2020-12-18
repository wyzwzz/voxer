//
// Created by wyz on 20-12-3.
//

#include "VolumeRaw2Video.h"
#include <assert.h>

VolumeRaw2Video::VolumeRaw2Video(std::string raw_file_name )
:volume(voxer::StructuredGrid::Load(raw_file_name.c_str()))
{

}
void VolumeRaw2Video::SetupArgs(voxer::StructuredGrid::Axis axis,
                                int32_t seconds_per_slice, int32_t bit_rate)
{
  this->out_file_name=out_file_name;
  this->axis=axis;
  this->seconds_per_slice=seconds_per_slice;
  this->bit_rate=bit_rate;
  auto dim=volume.get()->info.dimensions;
  switch (axis) {
  case voxer::StructuredGrid::Axis::X:{
    slice_w=dim[1];
    slice_h=dim[2];
    slice_depth=dim[0];
    break;
  }
  case voxer::StructuredGrid::Axis::Y:{
    slice_w=dim[0];
    slice_h=dim[2];
    slice_depth=dim[1];
    break;
  }
  case voxer::StructuredGrid::Axis::Z:{
    slice_w=dim[0];
    slice_h=dim[1];
    slice_depth=dim[2];
    break;
  }
  default:
    break;
  }
#ifdef RESHAPE
  re_slice_w=slice_w/2*2;
  re_slice_h=slice_h/2*2;
  vc.reset(Init(re_slice_w,re_slice_h,1,bit_rate));//fps can only pass integer number
#else
  vc.reset(Init(slice_w,slice_h,1,bit_rate));//fps can only pass integer number
#endif
}
void reshape(uint32_t w,uint32_t h,uint32_t re_w,uint32_t re_h,voxer::Image& image);
void VolumeRaw2Video::Convert(std::string out_file_name)
{
  for(size_t d=0;d<slice_depth;d++){
    auto image=volume->get_slice(axis,d);
#ifdef RESHAPE
    reshape(slice_w,slice_h,re_slice_w,re_slice_h,image);
#endif
    for(size_t i=0;i<seconds_per_slice;i++){
      AddFrame(image.data.data(),vc.get());
    }
  }
  Finish(vc.get(),out_file_name.c_str());
}
void reshape(uint32_t w,uint32_t h,uint32_t re_w,uint32_t re_h,voxer::Image& image)
{
  if(w==re_w && h==re_h) return;
  std::cout<<"reshape..."<<std::endl;

  if(w==re_w){
    assert(h-1==re_h);
    image.data.resize(re_w*re_h);
  }
  else if(h==re_h){
    assert(w-1==re_w);
    for(size_t i=1;i<re_h;i++)
      memmove(image.data.data()+re_w*i,image.data.data()+w*i,re_w);
    image.data.resize(re_w*re_h);
  }
  else{
    assert(h-1==re_h);
    assert(w-1==re_w);
    image.data.resize(w*re_h);
    for(size_t i=1;i<re_h;i++)
      memmove(image.data.data()+re_w*i,image.data.data()+w*i,re_w);
    image.data.resize(re_w*re_h);
  }
}