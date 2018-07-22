FROM java:8
ADD ./target/automation-0.0.1-SNAPSHOT.jar /home/amarbright/automation-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/home/amarbright/automation-0.0.1-SNAPSHOT.jar"]
