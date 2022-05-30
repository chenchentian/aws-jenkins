# shellcheck disable=SC2164
cd ~/.ssh

chmod 600  chenchentian.pem

ssh  -i "chenchentian.pem"

cd ~/.ssh

chmod 600 demo-0.0.1-SNAPSHOT.jar

java -jar demo-0.0.1-SNAPSHOT.jar
