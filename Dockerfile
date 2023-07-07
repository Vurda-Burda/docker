FROM ubuntu:20.04

COPY . /homework

RUN apt upgrade && apt update && apt install python3 python3-pip -y && apt clean
RUN pip3 install flack
RUN pip3 install -r /homework/requirements.txt

CMD python3 /homework/app.py