#pragma once
#include "DataModel/Annotation.hpp"
#include "Service/AbstractService.hpp"
#include "Store/DatasetStore.hpp"
#include <voxer/Data/Slice.hpp>

namespace voxer::remote {

class SliceService final : public AbstractService {
public:
  void on_message(const char *message, uint32_t size,
                  const MessageCallback &callback) noexcept override;

  [[nodiscard]] auto get_protocol() const noexcept -> Protocol override {
    return Protocol::WebSocket;
  };

  [[nodiscard]] auto get_dataset_slice(const DatasetId &id,
                                       voxer::StructuredGrid::Axis axis,
                                       uint32_t index) const -> Image;

  DatasetStore *m_datasets = nullptr;

private:
  rapidjson::Document m_document;
  std::unordered_map<voxer::SliceInfo, voxer::AnnotatedSliceInfo>
      annotation_store;
};

} // namespace voxer::remote