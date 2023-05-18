if [ "$EXPERIMENT_NAME"X == "X" ]; then
  echo "EXPERIMENT_NAME is unset, setting to sample_tag_delete"
  EXPERIMENT_NAME="sample_tag_delete"
  else
  echo "EXPERIMENT_NAME is $EXPERIMENT_NAME"
  fi

function verify_tag()
{
   WABTAOTTAG=`git name-rev --tags --name-only HEAD`
   if [ "$WABTAOTTAG" == "undefined" ]; then
      echo Creating a TAG with $EXPERIMENT_NAME
      git tag  $EXPERIMENT_NAME
      git push origin $EXPERIMENT_NAME -o ci.skip
   else
      echo TAG already exists
   fi
   return 0
}
hostname > version.txt
verify_tag
pwd >> version.txt

git rev-parse --short HEAD >> version.txt
cd em-interp
verify_tag
pwd >> ../version.txt
git rev-parse --short HEAD >> ../version.txt
cd ../wabtaot-private-additions
verify_tag
pwd >> ../version.txt
git rev-parse --short HEAD >> ../version.txt
cd ../third_party/omr
verify_tag
pwd >> ../../version.txt
git rev-parse --short HEAD >> ../../version.txt