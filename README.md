## Motivation

This is mutation of https://github.com/JetBrains/teamcity-docker-minimal-agent changed to enable inclution of newer jdk than jdk1.8 in docker agent.

Should be used for https://github.com/adam00s/teamcity-docker-agent-jdk10

## build script on linux (on system with running teamcity server)
```
# update dependency
docker pull adoptopenjdk/openjdk10

# get fresh files
rm -rf teamcity-docker-minimal-agent-jdk10
git clone https://github.com/adam00s/teamcity-docker-minimal-agent-jdk10.git

# go to docker build folder
cd teamcity-docker-minimal-agent-jdk10/ubuntu

# get agent files (change host to your teamcity server)
wget http://localhost:8111/update/buildAgent.zip
mkdir dist
unzip buildAgent.zip -d dist/buildagent
mv dist/buildagent/conf dist/buildagent/conf_dist

# run docker build
chmod +x build.sh
./build.sh
```
