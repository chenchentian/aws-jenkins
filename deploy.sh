apt update

apt install -y maven

mvn install

apt install -y openjdk-11-jdk

java -jar ./target/demo-0.0.1-SNAPSHOT.jar