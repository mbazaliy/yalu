SCRIPTPATH=`dirname $0`
cd $SCRIPTPATH
rm -f magic.dylib

if [ -z "$CC" ]; then CC=clang; fi
$CC main.m -o main -framework Foundation libxnuexp.m -m32 -isysroot "$(xcrun --show-sdk-path)" && ./main && echo "Generated exploit dylib"
