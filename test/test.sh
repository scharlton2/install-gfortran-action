#!/bin/bash

path="$1"
if [ -z "$path" ]
then
  echo "Must specify path argument"
  exit 1
fi

if [ -L "$path" ]  # install dir is symlinked
then
  echo "Install location exists: $path"
else
  echo "Install location doesn't exist: $path"
  exit 1
fi

if command -v gfortran &> /dev/null
then
  echo "Command gfortran available"
else
  echo "Command gfortran not available"
  exit 1
fi

gfortran -cpp -E -dM test/hw.F90
gfortran test/hw.F90 -o hw
echo "Compile succeeded"

output=$(./hw '2>&1')
if [[ "$output" == *"hello world"* ]]
then
  echo "$output"
else
  echo "Unexpected output: $output"
  exit 1
fi

#gfortran --version
#cmake -E touch foo.f90
#gfortran -cpp -E -dM foo.f90
