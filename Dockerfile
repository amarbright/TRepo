FROM java:8
ADD http://35.200.216.88:8081/artifactory/webapp/#/artifacts/browse/tree/General/trepo-maven/automation-0.0.1-SNAPSHOT.jar /home/amarbright
RUN java -jar /home/amarbright/automation-0.0.1-SNAPSHOT.jar
