echo "start configuration";
WHOAMI=`whoami`
SDKVERSION="7.1"
ARCH="i386"
CC=`xcrun -find -sdk iphoneos clang`
DEVELOPER=`xcode-select -print-path`
PLATFORM="iPhoneSimulator"
EXTRA_LDFLAGS="${DEVELOPER}/Platforms/${PLATFORM}.platform/Developer/SDKs/${PLATFORM}${SDKVERSION}.sdk/"

./configure --prefix=$HOME/Desktop/SPEEX$WHOAMI/libogg-1.3.0/$ARCH -host=$ARCH-apple-darwin -build=x86_64-apple-darwin12.3.0 CC="$CC -std=c99 -arch $ARCH "

echo "end cnfiguration";
echo "start building";
make clean
make
make install
echo "end building";
