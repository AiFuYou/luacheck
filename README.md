# luacheck
luacheck for git

# 功能
* 提交`.lua`文件时使用`luacheck`检查脚本的语言规范
* 向Unity工程目录Assets下添加文件时，检查`.meta`或源文件是否提交（例如避免漏提`.meta`文件）

# 使用方法
1. 修改`pre-commit`文件，根据项目路径修改`luacheck`、`luacheckCfgFilePath`、`ASSETS_DIR`；
2. 修改`luacheckconfig.bat`文件，定位到项目的`.git/hooks`路径；
3. 执行`luacheckconfig.bat`（或手动拷贝`pre-commit`文件到项目的`.git/hooks`目录）
