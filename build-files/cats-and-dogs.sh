# Run this file from the git archive's root
[ -d .git ] || (echo ".git not found" && exit 1)

INITIAL_PWD=`pwd`
NAME=cats-and-dogs
GIT_URL="https://github.com/bmxguy100/cats-and-dogs"
SUBDIR=vue-app

STATIC_PATH=./static/embed/$NAME
TEMP_PATH=/tmp/website-build/$NAME
[ -d $STATIC_PATH ] && rm -Rf $STATIC_PATH
mkdir -p $STATIC_PATH
mkdir -p $TEMP_PATH

echo Building $NAME
cd $TEMP_PATH
git clone $GIT_URL .
cd $SUBDIR
yarn
yarn build
echo Done building $NAME

cd $INITIAL_PWD
cp -r $TEMP_PATH/$SUBDIR/dist/* $STATIC_PATH
rm -Rf $TEMP_PATH

git status
