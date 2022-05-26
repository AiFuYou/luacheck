echoRed(){
	echo "\033[31m$@\033[0m"
}

echoGreen(){
	echo "\033[32m$@\033[0m"
}

echoGreen copy pre-commit to .git/hooks/
# 根据项目情况修改以下路径
dstPath=../.git/hooks/pre-commit
cp pre-commit $dstPath
chmod 777 $dstPath
echo checking luarocks install
which luarocks
if [[ $? != 0 ]]; then
	echoGreen install luarocks
	sudo chown -R $(whoami) /usr/local/*
	brew install luarocks
else
	echoGreen luarocks already exists
fi

echo checking luacheck install
which luacheck
if [[ $? != 0 ]]; then
	echoGreen install luacheck
	luarocks install luacheck
else
	echoGreen luacheck already exists
fi

echoGreen done