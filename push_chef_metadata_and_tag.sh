#cat metadata.rb
# Assume's job name is release_*
CUR_DIR=${PWD##*/} 
GIT_PROJ=${CUR_DIR#release_}

# create a cookbooks directory in chef-repo as defined in chef-identity plugin
mkdir -p /var/lib/jenkins/workspace/cookbooks/$GIT_PROJ
cd ..
yes | \cp -af $CUR_DIR/. /var/lib/jenkins/workspace/cookbooks/$GIT_PROJ/
cd $CUR_DIR
#cat /var/lib/jenkins/workspace/cookbooks/$GIT_PROJ/metadata.rb

# bump the version using knife-spork
VERSION_LINE=`knife spork bump $GIT_PROJ minor 2>&1`
#cat /var/lib/jenkins/workspace/cookbooks/$GIT_PROJ/metadata.rb
regex="Successfully bumped $GIT_PROJ to v([0-9.]+)"
if [[ $VERSION_LINE =~ $regex ]]
then
  NEW_VERSION=${BASH_REMATCH[1]}
  echo NEW_VERSION=$NEW_VERSION > build.properties
else
 echo "unexpected output from knife-spork"
 exit FAIL
fi
yes | cp -f /var/lib/jenkins/workspace/cookbooks/$GIT_PROJ/metadata.rb .
#cat /var/lib/jenkins/workspace/cookbooks/$GIT_PROJ/metadata.rb

# update project to push to git
#cat metadata.rb
git add metadata.rb
git commit -m "Bumping version to $NEW_VERSION"

# update on Chef Server
berks install
berks upload
