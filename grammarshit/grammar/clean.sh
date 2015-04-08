#!/usr/bin/env bash
find . -type f -not -name '*.g4' -not -name '*.sh' | xargs rm
