#!/bin/sh

pushd '..'
vendor/bin/premake/premake5 gmake2
popd
