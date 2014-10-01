FROM ubuntu:12.04

RUN locale-gen en_US en_US.UTF-8 && \
    dpkg-reconfigure locales

RUN apt-get update && apt-get install -y \
    build-essential \
    git-core \
    python-pip \
    python-software-properties \
  && rm -rf /var/lib/apt/lists/*

RUN pip install virtualenv;

CMD ["/bin/bash"]
