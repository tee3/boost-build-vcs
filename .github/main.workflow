workflow "Workflow" {
  on = "push"
  resolves = ["Test"]
}

action "Test" {
  uses = "./.github/boost-build"
  runs = ["sh", "-c", "BOOST_BUILD_PATH=$(pwd) make test"]
}
