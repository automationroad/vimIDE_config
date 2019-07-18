### 配置个人的vimIDE，以python为主，补全插件使用的是jedi-vim

目前支持的补全列表

Python

Nginx

ansible

docker

kubernetes

具体查看博客介绍 [打造个人的vimIDE](https://www.cnblogs.com/AutoSmart/p/10363908.html)

## 一键部署

以上配置是目前的vim自定义配置，由于环境不同，下载安装时间长，在新机器部署时发现效率特别低，所以把原始文件打包放GitHub上，做了个一键部署脚本，前提是Linux下存在git命令，能够克隆文件，一键部署只需要执行以下步骤

```
# jedi和pe8的支持插件
pip install jedi autopep8
# centos7下系统默认没有pip，需要安装epel源和pip
yum install epel-release -y
yum install python2-pip -y
# 自定义部署过程
git clone https://github.com/automationroad/vimIDE_config.git
sh latest_deploy_vimIDE.sh
```

