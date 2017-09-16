title: "17-7-31"
date: 2017-7-31 18:00:00 +0800
update: 2017-08-26 17:00:00 +0800
author: me
tags:
    - 日报
    - 研究生
preview: 搭建storlet环境...

---
#完成的工作~
    1. 解决了storlet部署过程中遇到的一些问题
    - google json_simple-1.1.jar包缺乏 通过下载并放到依赖文件夹解决
    - docker镜像构建中一个用于下载依赖的task执行失败 通过修改依赖地址解决
      未完成的工作~
    2. storlet的部署卡在docker任务[host_storlet_engine_install : Install C/Java codes on remote host]
  一些观察到的现象~
    3. storlet进程是运行在docker中的，但是在storlet的安装过程中我发现storlet是先安装在本机上？然后docker再把它包装成一个镜像。原因相同的依赖包google json_simple-1.1.jar要安装两次。
##接下来的工作：
    4. 继续完成storlet环境搭建工作
    5. 阅读文档写输出
