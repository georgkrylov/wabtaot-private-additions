cd $EXPERIMENT_ROOT
git checkout b453347fcd1acfdec082640392c60d3f010b5464
echo "wabtaot-paper-version" >> ./version.txt
git rev-parse --short HEAD >> ./version.txt
cd third_party/omr 
git checkout 53d685f9760e693bd927e208ff340ece17c36b9f
echo "wabtaot-omr-paper-version" >> ../../version.txt
git rev-parse --short HEAD >> ../../version.txt

cd ../..
rm -rf build_paper &&            mkdir build_paper &&         cd build_paper &&    cmake -DBUILD_TOOLS=ON -DWASM_SHARED_CACHE=ON -DOMR_ELF_SHARED_OBJECT=OFF ..  && make -j14
cd ..
cp "./build_paper/src/aot/wabtaot" $WABTAOTFOLDER/wabtaot-paper
git checkout $WABTAOTVERSION
git submodule update