#!/bin/sh

MODULE="qmacc"
VERSION="1.0.0"
TITLE="腾讯游戏加速插件"
DESCRIPTION="腾讯游戏加速插件"
HOME_URL="Module_qmacc.asp"

# Check and include base
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ "$MODULE" == "" ]; then
	echo "module not found"
	exit 1
fi

if [ -f "$DIR/$MODULE/$MODULE/install.sh" ]; then
	echo "install script not found"
	exit 2
fi

if [ "$VERSION" = "" ]; then
	echo "version not found"
	exit 3
fi

# now include build_base.sh
. $DIR/../softcenter/build_base.sh

# change to module directory
cd $DIR

# do something here
do_build_result

