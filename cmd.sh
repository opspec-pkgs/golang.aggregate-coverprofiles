#!/usr/bin/env sh
set -e
echo "generating aggregate coverage profile"
find . -name '*.coverprofile' | xargs cat > /tmpcoverprofile

echo "stripping generated code"
sed '/fake/d' -i /tmpcoverprofile
sed '/bindata/d' -i /tmpcoverprofile

cat /tmpcoverprofile > /coverprofile
