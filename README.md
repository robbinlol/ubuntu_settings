# 记录*Linux*的配置

## clash

make 的一句话替代了每次点开网络代理来设置

# 工具类

- tldr
- fish
- anaconda
- gnome-sushi
- Albert
- plank
  1. 看起来 plank 最多支持 6 个应用固定
  2. 安装的版本如果不能在 dock 栏直接选择应用的话，可以使用命令行
  ```bash
  # 控制plank显示应用的目录
  cd ~/.config/plank/dock1/launchers
  # 查看可以显示的应用(*.desktop)
  ll /usr/share/applications
  # 创建要显示的应用程序并修改内容
  vim *.dockitem
  ```
