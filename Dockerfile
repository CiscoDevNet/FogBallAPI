FROM python:alpine

RUN apk update && apk add git

RUN git clone https://github.com/CiscoDevNet/foosball_demo.git

WORKDIR /foosball_demo/api_service

RUN pip install -r requirements.txt

WORKDIR /foosball_demo/api_service/rest_api_demo

LABEL "cisco.cpuarch"="x86_64"
LABEL "cisco.resources.profile"="custom"
LABEL "cisco.resources.cpu"="50"
LABEL "cisco.resources.memory"="100"
LABEL "cisco.resources.disk"="10"
LABEL "cisco.resources.network.0.interface-name"="eth0"

EXPOSE 5000

CMD ["python", "app.py."]



