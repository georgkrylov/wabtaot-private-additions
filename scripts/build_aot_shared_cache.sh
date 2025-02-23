if [ "$BUILD_DIRECTORY""X" == "X" ]; then
BUILD_DIRECTORY="./build/"
fi
echo "Using build directory: "$BUILD_DIRECTORY
rm -rf $BUILD_DIRECTORY
mkdir -p $BUILD_DIRECTORY
CURRENT_DIR=`pwd`
cd $BUILD_DIRECTORY
cmake -DBUILD_TOOLS=ON -DWASM_SHARED_CACHE=ON -DOMR_ELF_SHARED_OBJECT=OFF $CURRENT_DIR
test -e $VERSION_FILE && echo "shared-cache" >> $VERSION_FILE 
make -j12
