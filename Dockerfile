FROM logiche/graalvm:20.3.0-java11-native-image-maven-3.6.3
# cache mvn repository
WORKDIR /home
RUN mvn package
RUN rm -rf ./*
