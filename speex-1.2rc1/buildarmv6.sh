echo "start configuration";
WHOAMI=`whoami`
SDKVERSION="7.1"
ARCH="armv6"
CC=`xcrun -find -sdk iphoneos clang`
DEVELOPER=`xcode-select -print-path`
PLATFORM="iPhoneOS"
EXTRA_LDFLAGS="${DEVELOPER}/Platforms/${PLATFORM}.platform/Developer/SDKs/${PLATFORM}${SDKVERSION}.sdk/"

./configure --prefix=$HOME/Desktop/SPEEX$WHOAMI/speex-1.2rc1/$ARCH -host=$ARCH-apple-darwin -disable-shared -enable-static -disable-oggtest -disable-fixed-point -enable-float-api -build=x86_64-apple-darwin12.3.0 -with-ogg=$HOME/Desktop/SPEEX$WHOAMI/libogg-1.3.0/armv6 CC="$CC -std=c99 -arch armv6 -isysroot $EXTRA_LDFLAGS";
echo "end cnfiguration";
echo "start building";
make clean
make
make install
echo "end building";
