workflow "Workflow" {
  on = "push"
  resolves = ["Test"]
}

action "Test" {
  uses = "./.github/boost-build"
  runs = ["sh", "-c", "BOOST_BUILD_PATH=$(pwd) bjam --verbose-test -j 8 test"]
}
