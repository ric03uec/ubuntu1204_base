FROM ubuntu:12.04

RUN apt-get update && apt-get install -y \
    build-essential \
    git-core \
    python-pip \
    python-software-properties \
  && rm -rf /var/lib/apt/lists/*

RUN pip install virtualenv;

CMD ["/bin/bash"]
