#!/usr/bin/env sh
set -e
echo "generating aggregate coverage profile"
find . -name '*.coverprofile' | xargs cat > /profile

echo "stripping generated code"
sed '/fake/d' -i /profile
sed '/bindata/d' -i /profile
