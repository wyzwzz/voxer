#pragma once
#include "DataModel/Scene.hpp"
#include "Service/AbstractService.hpp"
#include "Store/DatasetStore.hpp"
#include <future>
#include <memory>
#include <voxer/Rendering/VolumeRenderer.hpp>

namespace voxer::remote {

class VolumeRenderingService : public AbstractService {
public:
  VolumeRenderingService();

  void on_message(const char *message, uint32_t size,
                  const MessageCallback &callback) noexcept override;

  [[nodiscard]] auto get_protocol() const noexcept -> Protocol override {
    return Protocol::WebSocket;
  };

  voxer::remote::DatasetStore *m_datasets = nullptr;

private:
  std::unique_ptr<voxer::VolumeRenderer> m_renderer;

  void traverse_scene(VolumeRenderer &renderer, const Scene &scene,
                      const MessageCallback &callback) const;

  auto parse(const char *message, uint32_t size)
      -> std::pair<std::string, Scene>;
};

} // namespace voxer::remote
