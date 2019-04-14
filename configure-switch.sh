#! /bin/bash
pushd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=../NintendoSwitchToolchain.cmake -DCMAKE_INSTALL_PREFIX=output -DSWITCH=true
popd