#pragma once
#include <cstdint>
#include <memory>
#include <rapidjson/document.h>
#include <string>
#include <voxer/Dataset.hpp>

namespace voxer {

struct Volume {
  int32_t dataset_idx = -1;
  int32_t tfcn_idx = -1;
  std::array<float, 3> spacing = {1.0f, 1.0f, 1.0f};

  std::array<float, 2> range = {0.0f, 100.0f};
  std::array<float, 3> translate = {0.0f, 0.0f, 0.0f};
  std::array<float, 3> scale = {1.0f, 1.0f, 1.0f};
  std::array<float, 3> clipBoxLower = {0.0f, 0.0f, 0.0f};
  std::array<float, 3> clipBoxUpper = {0.0f, 0.0f, 0.0f};
  bool render = false;

  auto serialize() -> rapidjson::Document;
  static auto deserialize(const rapidjson::Value &json) -> Volume;
};

} // namespace voxer