#!/usr/bin/env sh
set -e
echo "generating aggregate coverage profile"
find . -name '*.coverprofile' | xargs cat > /coverage

echo "stripping generated code"
sed '/fake/d' -i /coverage
sed '/bindata/d' -i /coverage

cat /coverage