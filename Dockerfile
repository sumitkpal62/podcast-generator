FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \ 
    python3-pip \
    git 

RUN python3 -m venv pyenv
RUN source pyenv/bin/activate

RUN pip install PyYAML


COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
