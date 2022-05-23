FROM python:slim

ADD . /honeyprint

WORKDIR /honeyprint

RUN pip install -r requirements.txt

CMD ["python3","server.py"]
