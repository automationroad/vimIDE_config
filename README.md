### 配置个人的vimIDE，以python为主，补全插件使用的是jedi-vim

### 更新第二版，改动比较多，插件管理器，主题设置等等，建议直接使用第二版

### 第二版一键部署

要求:系统中安装了 curl,pip 命令 ,vim版本大于7.4，否则启动报错，注释 .vimrc.bundles 19行的插件即可
建议：root用户执行，涉及安装部分，普通用户会报错，或者加sudo执行，centos和Ubunt都可以使用；桌面环境下还可以看到文件类型图标，例如Ubuntu可以看到

```shell
git clone https://github.com/automationroad/vimIDE_config.git
sh vimIDE_config/second_version/deploy_vimIDE.sh
```

### 最新版部署

centos和Ubuntu都可以，其他发行版应该一样，里面涉及的安装跟发行版无关，配置只对 当前 用户生效

```shell
git clone https://github.com/automationroad/vimIDE_config.git
sh vimIDE_config/latest/latest_deploy_vimIDE.sh
```

