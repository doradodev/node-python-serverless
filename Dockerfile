FROM ubuntu:latest

RUN apt-get update
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential
RUN npm install --no-audit -g serverless
RUN npm install --no-audit -g serverless-offline
RUN npm install --no-audit -g serverless-dotenv-plugin
RUN npm install --no-audit -g cross-env
RUN npm install --no-audit -g typescript
RUN npm install --no-audit -g env-cmd
RUN apt-get install --yes python3-pip
RUN pip3 install awscli
RUN apt install wget
RUN apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev curl software-properties-common --yes
RUN wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tar.xz
RUN tar -xf Python-3.9.0.tar.xz
RUN ./Python-3.9.0/configure
RUN make altinstall
RUN unlink /usr/bin/python3
RUN ln -s /usr/local/bin/python3.9 /usr/bin/python3


#docker build -t tranqi/node-tranqi .
#docker tag tranqi/node-tranqi devopstranqi/node-tranqi
#docker push devopstranqi/node-tranqi
