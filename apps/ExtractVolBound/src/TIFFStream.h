//
// Created by wyz on 20-12-5.
//

#ifndef VOXER_TIFFSTREAM_H
#define VOXER_TIFFSTREAM_H
#include <gdal.h>
#include <gdal_priv.h>
#include <memory>
#include <vector>
#include <string>
#include <iostream>
#include <assert.h>
/**
 * Just think about only one channel tif image
 */
class TIFFStream {
public:
  TIFFStream():tif_ds(nullptr){ GDALAllRegister();   driver=GetGDALDriverManager()->GetDriverByName("GTiff");};
  ~TIFFStream(){
    if(tif_ds) GDALClose(tif_ds);
    if(driver) delete driver;
  }
  void read(std::string file_name);
  void resample(uint8_t factor_w,uint8_t factor_h);
  void write(std::string file_name);
private:
  GDALDataset* tif_ds;
  std::vector<std::vector<uint8_t>> data;
  GDALDriver* driver;
  struct TIFFDataInfo{
    int width;
    int height;
    int nchannel;
    GDALDataType data_type;
    friend std::ostream& operator<<(std::ostream& os,const TIFFDataInfo& tif){
      os<<"tif image width: "<<tif.width
        <<"\ntif image height: "<<tif.height
        <<"\ntif image nchannl: "<<tif.nchannel
        <<"\ntif image data type: "<<tif.data_type<<std::endl;
    }
  } tif_info;

  std::vector<std::vector<uint8_t>> re_data;
  int re_width;
  int re_height;
};
inline void TIFFStream::read(std::string file_name)
{

  std::cout<<file_name<<std::endl;
  tif_ds=(GDALDataset*)GDALOpen(file_name.c_str(),GA_ReadOnly);

  tif_info.width=tif_ds->GetRasterXSize();
  tif_info.height=tif_ds->GetRasterYSize();
  tif_info.nchannel=tif_ds->GetRasterCount();
  tif_info.data_type=tif_ds->GetRasterBand(1)->GetRasterDataType();
  data.resize(tif_info.height);

  for(size_t i=0;i<tif_info.height;i++){
    data[i].resize(tif_info.width);
    auto err_code=tif_ds->GetRasterBand(1)->RasterIO(GF_Read,0,i,tif_info.width,1,data[i].data(),tif_info.width,1,GDT_Byte,0,0);
  }

//  std::cout<<"tif image width: "<<tif_info.width
//    <<"\ntif image height: "<<tif_info.height
//    <<"\ntif image nchannl: "<<tif_info.nchannel
//    <<"\ntif image data type: "<<tif_info.data_type<<std::endl;
  std::cout<<"finish read tif image"<<std::endl;

}
void TIFFStream::resample(uint8_t factor_w, uint8_t factor_h)
{
  re_width=tif_info.width/factor_w; if(re_width*factor_w<tif_info.width) re_width++;
  re_height=tif_info.height/factor_h; if(re_height*factor_h<tif_info.height) re_height++;
  std::cout<<"resample w is: "<<re_width<<" h is: "<<re_height<<std::endl;
  re_data.resize(re_height);
  auto size=tif_info.width*tif_info.height;
  for(size_t i=0;i<re_height;i++){
    re_data[i].resize(re_width);
    for(size_t j=0;j<re_width;j++){
      uint8_t max_value=0;
      for(int k=0;k<factor_h;k++){
        for(int s=0;s<factor_w;s++){
          auto row=i*factor_h+k;
          auto col=j*factor_w+s;
          if(row>=tif_info.height || col>=tif_info.width)
            continue;
          auto value=data[row][col];
          if(value>max_value)
            max_value=value;
        }
      }
      re_data[i][j]=max_value;
    }
  }
  std::cout<<"finish resample"<<std::endl;
}
void TIFFStream::write(std::string file_name)
{
  GDALDataset* out_ds=driver->Create(file_name.c_str(),re_width,re_height,1,GDT_Byte,0);
  for(size_t i=0;i<re_height;i++){
    out_ds->GetRasterBand(1)->RasterIO(GF_Write,0,i,re_width,1,re_data[i].data(),re_width,1,GDT_Byte,0,0);
  }

  GDALClose(out_ds);
  GDALClose(tif_ds);
  tif_ds= nullptr;
  std::cout<<"finish write"<<std::endl;
}

#endif // VOXER_TIFFSTREAM_H
