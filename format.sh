#!/bin/sh

find ./miniTri -regex '.*\.\(cpp\|hpp\|cc\|cxx\h\)' -exec clang-format -i {} \;
