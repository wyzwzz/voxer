#include "utils.hpp"
#define CATCH_CONFIG_MAIN
#include "third_party/catch.hpp"
#include <map>

using namespace std;

TEST_CASE("nanoid", "[generate]") {
  auto collision = false;
  map<string, bool> table;
  for (size_t i = 0; i < 100000; i++) {
    auto res = nanoid();
    if (table.find(res) == table.end()) {
      table.emplace(res, true);
    } else {
      collision = true;
      break;
    }
  }

  REQUIRE(!collision);
}

TEST_CASE("extract_params", "[extract]") {
  string str1 = R"({"params":{}})";
  string str2 = R"({"params":{"hello":1}})";
  string str3 = R"({"params": { "world": true}})";
  string str4 = R"({"params":{"obj": {"key": 3 } }})";
  string str5 = R"(
{"params":{
  "obj": {"key": 3 },
  "obj2": "value"
}
})";

  REQUIRE(extract_params(str1).empty());
  REQUIRE(extract_params(str2) == R"({"hello":1})");
  REQUIRE(extract_params(str3) == R"({ "world": true})");
  REQUIRE(extract_params(str4) == R"({"obj": {"key": 3 } })");
  REQUIRE(extract_params(str5) == R"({
  "obj": {"key": 3 },
  "obj2": "value"
})");
}