pwd > version.txt
git rev-parse --short HEAD >> version.txt
cd em-interp
pwd >> ../version.txt
git rev-parse --short HEAD >> ../version.txt
cd ../third_party/omr
pwd >> ../../version.txt
git rev-parse --short HEAD >> ../../version.txt