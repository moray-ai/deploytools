FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
                              python-pip \
                              wget \
                              curl \
                              unzip && \
    cd /tmp && wget https://releases.hashicorp.com/packer/1.2.2/packer_1.2.2_linux_amd64.zip -O packer.zip && \
    unzip packer.zip && \
    mv packer /user/local/bin/packer && \
    rm packer* && \
    rm -rf /var/lib/apt/lists/*

RUN pip install \
        ansible==2.5.0 \
        awscli==1.14.53 \
        boto3==1.6.6
