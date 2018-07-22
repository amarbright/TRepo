FROM java:8
ADD ./target/*.jar /home/amarbright
CMD java -jar /home/amarbright/automation-0.0.1-SNAPSHOT.jar
