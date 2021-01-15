FROM oracle/graalvm-ce:20.3.0-java11
RUN curl -OL https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar -zxf ./apache-maven-3.6.3-bin.tar.gz
RUN ln -s /apache-maven-3.6.3/bin/mvn /usr/bin/
RUN sed -i '146a <mirror><id>aliyunmaven</id><mirrorOf>*,!jeecg,!jeecg-snapshots,!getui-nexus</mirrorOf><name>阿里云公共仓库</name><url>https://maven.aliyun.com/repository/public</url></mirror>' /apache-maven-3.6.3/conf/settings.xml
RUN gu install native-image
CMD ["native-image","--version"]