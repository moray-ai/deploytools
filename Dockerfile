FROM python:3.10

RUN apt-get update && apt-get install -y \
                              wget \
                              curl \
                              unzip \
                              zip \
                              git && \
    cd /tmp && wget https://releases.hashicorp.com/packer/1.2.2/packer_1.2.2_linux_amd64.zip -O packer.zip && \
    unzip packer.zip && \
    mv packer /usr/local/bin/packer && \
    rm packer*

RUN pip install \
        ansible==7.1.0 \
        awscli==1.27.37 \
        boto3==1.26.35
