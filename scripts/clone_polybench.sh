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
echo "Experiment folder is $EXPERIMENT_FOLDER"
cwd=`pwd`
if [ $EXPERIMENT_FOLDER"X" == "X" ] ; then
echo "Experiment folder is unset"
else 
cd $EXPERIMENT_FOLDER
echo "Changed directory to"$pwd
fi
git clone git@gitlab.casa.cs.unb.ca:pjelenko/polybench.git
cd polybench
git submodule update --init --recursive
verify_tag
pwd >> $cwd/version.txt
git rev-parse --short HEAD >> $cwd/version.txt
cd $cwd