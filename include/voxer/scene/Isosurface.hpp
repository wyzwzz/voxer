#pragma once
#include <memory>
#include <rapidjson/document.h>
#include <voxer/scene/Volume.hpp>

namespace voxer {

struct Isosurface {
  float value = 0.0f;
  int32_t dataset_idx = -1;
  std::string color = "#FF0000";
  bool render = true;

  auto serialize() -> rapidjson::Document;
  static auto deserialize(const rapidjson::Value &json) -> Isosurface;
};

} // namespace voxer
