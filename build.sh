docker run -it -v /Users/chenhong.tian/Documents/github-personal/aws-jenkins:/aws-jenkins -w /aws-jenkins ubuntu:latest bash

apt update

apt install -y maven

mvn install