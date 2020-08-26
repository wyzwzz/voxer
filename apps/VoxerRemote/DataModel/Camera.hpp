#pragma once
#include <array>
#include <map>
#include <seria/utils.hpp>
#include <string>
#include <voxer/Rendering/Camera.hpp>

namespace voxer::remote {

using Camera = voxer::Camera;

} // namespace voxer::remote

namespace seria {

template <> inline auto registerObject<voxer::remote::Camera>() {
  using Camera = voxer::remote::Camera;
  return std::make_tuple(
      member("width", &Camera::width), member("height", &Camera::height),
      member("pos", &Camera::pos), member("up", &Camera::up),
      member("target", &Camera::target), member("ao", &Camera::enable_ao));
}

} // namespace seria
