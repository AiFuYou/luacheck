echo off
echo copy pre-commit to .git\hooks\
rem 根据项目情况修改以下路径
copy pre-commit ..\.git\hooks\pre-commit
echo done
pause