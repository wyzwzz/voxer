#include "ManagerAPI/ManagerAPIClient.hpp"
#include <fmt/core.h>

namespace voxer::remote {

ManagerAPIClient::ManagerAPIClient(std::string address)
    : m_address(std::move(address)), m_uri("http://" + m_address) {}

DatasetLoadInfo ManagerAPIClient::get_dataset_info(const std::string &id) {
  return request<DatasetLoadInfo>("/datasets/" + id);
}

ManagerAPIClient::ManagerAPIClient() : ManagerAPIClient("127.0.0.1:3001") {}

} // namespace voxer::remote