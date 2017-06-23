#!/usr/bin/env sh
set -e
echo "generating aggregate coverage profile"
find . -name '*.coverprofile' | xargs cat > /coverprofile

echo "stripping generated code"
sed '/fake/d' -i /coverprofile
sed '/bindata/d' -i /coverprofile
