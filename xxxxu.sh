#!/bin/bash

# 预先填充 "y" 以通过交互式提示
echo "y" | bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)

# 延迟几秒以确保 x-ui 完全安装
sleep 10

# 修改用户名、密码和端口
default_username="zghlby"
default_password="wj908919"
default_port="11335"

# 应用设置
/usr/local/x-ui/x-ui setting -username ${default_username} -password ${default_password}
/usr/local/x-ui/x-ui setting -port ${default_port}

# 重启 x-ui 以应用新设置
systemctl restart x-ui

echo "x-ui 已经被安装并且配置完成。"