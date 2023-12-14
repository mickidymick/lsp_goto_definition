#!/usr/bin/env bash

if [[ $(uname) == "Darwin" ]]; then
    WARN="-Wno-writable-strings -Wno-extern-c-compat"
else
    WARN="-Wno-write-strings -Wno-extern-c-compat"
fi

g++ -o lsp_goto_definition.so lsp_goto_definition.cpp -std=c++11 ${WARN} ${LINK} $(yed --print-cppflags --print-ldflags)
