#pragma once
#include <voxer/Data/Image.hpp>
#include <voxer/Rendering/Camera.hpp>
#include <voxer/Rendering/Isosurface.hpp>
#include <voxer/Rendering/Volume.hpp>

class VoxerIRenderer;

namespace voxer {

class VolumeRenderer {
public:
  enum struct Type { OSPRay, OpenGL };

  explicit VolumeRenderer(Type type);
  ~VolumeRenderer();

  void set_camera(const Camera &);
  void add_volume(const std::shared_ptr<Volume> &volume);
  void add_isosurface(const std::shared_ptr<Isosurface> &isosurface);
  void clear_scene();

  void render() const;

  auto get_colors() -> const Image &;

private:
  std::unique_ptr<VoxerIRenderer> impl;
};

} // namespace voxer