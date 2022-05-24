docker run -itd -v /Users/chenhong.tian/Documents/github-personal/aws-jenkins:/aws-jenkins -w /aws-jenkins --name runner ubuntu:latest bash
docker exec runner sh build.sh
docker exec runner sh deploy.sh
