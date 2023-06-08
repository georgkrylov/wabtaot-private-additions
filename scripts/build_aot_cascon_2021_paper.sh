cd $EXPERIMENT_ROOT
git checkout 8b0f9a5cf6ed37047c362c5770b0d05e937285f1
echo "wabtaot-paper-version" >> ./version.txt
git rev-parse --short HEAD >> ./version.txt
cd third_party/omr 
git checkout 53d685f9760e693bd927e208ff340ece17c36b9f
echo "wabtaot-omr-paper-version" >> ../../version.txt
git rev-parse --short HEAD >> ../../version.txt

cd ../..
rm -rf build_paper &&            mkdir build_paper &&         cd build_paper &&    cmake -DBUILD_TOOLS=ON -DWASM_SHARED_CACHE=ON -DOMR_ELF_SHARED_OBJECT=OFF ..  && make -j14
cd ..
git checkout $WABTAOTVERSION
git submodule update