#!/bin/bash

# 下载并解压 Hive
HIVE_VERSION="4.0.1"
wget https://dlcdn.apache.org/hive/hive-$HIVE_VERSION/apache-hive-$HIVE_VERSION-bin.tar.gz
tar -zxvf apache-hive-$HIVE_VERSION-bin.tar.gz -C /opt/
ln -s /opt/apache-hive-$HIVE_VERSION-bin /opt/hive

# 配置 Hive
cp /opt/hive/conf/hive-env.sh.template /opt/hive/conf/hive-env.sh
echo "export HADOOP_HOME=/opt/hadoop" >> /opt/hive/conf/hive-env.sh
echo "export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk" >> /opt/hive/conf/hive-env.sh


cat << EOF > /opt/hive/conf/hive-site.xml
   <configuration>
     <!-- 内置Derby元数据库（无需MySQL） -->
     <property>
       <name>javax.jdo.option.ConnectionURL</name>
       <value>jdbc:derby:;databaseName=/opt/hive/metastore_db;create=true</value>
     </property>
     <property>
       <name>javax.jdo.option.ConnectionDriverName</name>
       <value>org.apache.derby.jdbc.EmbeddedDriver</value>
     </property>

     <!-- HDFS仓库路径（关键配置） -->
     <property>
       <name>hive.metastore.warehouse.dir</name>
       <value>hdfs://localhost:9000/user/hive/warehouse</value>
     </property>

     <!-- 禁用HiveServer2（Derby不支持多连接） -->
     <property>
       <name>hive.server2.enable</name>
       <value>false</value>
     </property>

     <!-- 其他优化 -->
     <property>
       <name>hive.cli.print.header</name>
       <value>true</value>
     </property>
   </configuration>

EOF

# 初始化元数据存储
/opt/hive/bin/schematool -initSchema -dbType derby

   