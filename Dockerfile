FROM ubuntu:18.04
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ADD http://35.200.216.88:8081/artifactory/webapp/#/artifacts/browse/tree/General/trepo-maven/automation-0.0.1-SNAPSHOT.jar /home/amarbright
RUN java -jar /home/amarbright/automation-0.0.1-SNAPSHOT.jar
