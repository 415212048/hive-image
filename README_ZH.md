 <h1 align="center">hive数据仓库</h1>
  <p align="center">
    <a href="README.md"><strong>English</strong></a> | <strong>简体中文</strong>
  </p>


## 目录

- [仓库简介](#项目介绍)
- [前置条件](#前置条件)
- [镜像说明](#镜像说明)
- [获取帮助](#获取帮助)
- [如何贡献](#如何贡献)

## 项目介绍

[hive](https://github.com/apache/hive) Hive是Apache开源的数据仓库工具，基于Hadoop构建，用于处理大规模结构化数据。本商品基于鲲鹏服务器的Huawei Cloud EulerOS 2.0 64bit系统，提供开箱即用的hive数据仓库。

## 核心功能

- **类SQL查询‌：** 支持标准的DDL、DML语句及聚合函数，无需编写复杂的MapReduce代码即可完成数据分析。‌
- **执行引擎‌：** 可配置为MapReduce、Spark、Tez等计算框架，提高处理效率。
- **元数据管理‌：** 将元数据存储在关系型数据库（如MySQL）中，加速查询语义检查过程。

本项目提供的开源镜像商品 [**hive数据仓库**](https://marketplace.huaweicloud.com/contents/509bd75a-40e2-406e-85f3-74575cb22699#productid=OFFI1123907959430758400) 已预先安装3.1.3版本的Hive及其相关运行环境，并提供部署模板。快来参照使用指南，轻松开启“开箱即用”的高效体验吧。


> **系统要求如下：**
> - CPU: 2vCPUs 或更高
> - RAM: 4GB 或更大
> - Disk: 至少 40GB

## 前置条件
[注册华为账号并开通华为云](https://support.huaweicloud.com/usermanual-account/account_id_001.html)

## 镜像说明

| 镜像规格                                                                                               | 特性说明 | 备注 |
|----------------------------------------------------------------------------------------------------| --- | --- |
| [hive-3.1.3-kunpeng](https://github.com/HuaweiCloudDeveloper/hive-image/tree/hive-3.1.3-kunpeng) | 基于鲲鹏服务器 + Huawei Cloud EulerOS 2.0 64bit 安装部署 |  |

## 获取帮助
- 更多问题可通过 [issue](https://github.com/HuaweiCloudDeveloper/hive-image/issues) 或 华为云云商店指定商品的服务支持 与我们取得联系
- 其他开源镜像可看 [open-source-image-repos](https://github.com/HuaweiCloudDeveloper/open-source-image-repos)

## 如何贡献
- Fork 此存储库并提交合并请求
- 基于您的开源镜像信息同步更新 README.md