echo off
echo copy pre-commit to .git/hooks/
# 根据项目情况修改以下路径
dstPath=./.git/hooks/pre-commit
cp pre-commit $dstPath
chmod 777 $dstPath
echo install luarocks and luacheck
sudo chown -R $(whoami) /usr/local/*
brew install luarocks
luarocks install luacheck
echo done