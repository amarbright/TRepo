FROM ubuntu:18.04
ADD /drone/src/github.com/amarbright/TRepo/target/automation-0.0.1-SNAPSHOT.jar /home/amarbright
RUN java -jar /home/amarbright/automation-0.0.1-SNAPSHOT.jar
