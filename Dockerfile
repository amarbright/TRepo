FROM java:8

COPY ./target/*.jar /home/amarbright
RUN ls -a
CMD java -jar /home/amarbright/automation-0.0.1-SNAPSHOT.jar
