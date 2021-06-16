#!/bin/bash

set -e

echo "FIRST FILE: $1"
echo "SECOND FILE: $2"

sh -c "diff $1 $2"