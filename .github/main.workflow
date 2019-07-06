workflow "Workflow" {
  on = "push"
  resolves = ["Help", "Manual", "Example", "Test"]
}

action "Boost.Build Setup" {
  uses = "./.github/boost-build"
  runs = ["sh", "-c", "echo \"using asciidoctor ;\" >> ${HOME}/user-config.jam"]
}

action "Help" {
  needs = "Boost.Build Setup"
  uses = "./.github/boost-build"
  runs = ["sh", "-c", "BOOST_BUILD_PATH=$(pwd) bjam --user-config=${HOME}/user-config.jam --help vcs"]
}

action "Manual" {
  needs = "Help"
  uses = "./.github/boost-build"
  runs = ["sh", "-c", "BOOST_BUILD_PATH=$(pwd) bjam --user-config=${HOME}/user-config.jam"]
}

action "Example" {
  needs = "Manual"
  uses = "./.github/boost-build"
  runs = ["sh", "-c", "BOOST_BUILD_PATH=$(pwd) bjam --user-config=${HOME}/user-config.jam --verbose-test -j 8 example"]
}

action "Test" {
  needs = "Example"
  uses = "./.github/boost-build"
  runs = ["sh", "-c", "BOOST_BUILD_PATH=$(pwd) bjam --user-config=${HOME}/user-config.jam --verbose-test -j 8 test"]
}
