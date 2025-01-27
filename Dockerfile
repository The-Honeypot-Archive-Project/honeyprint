FROM python:slim

ADD . /honeyprint

WORKDIR /honeyprint

RUN pip install -r requirements.txt

RUN cd /usr/local/lib/python*/site-packages/pkipplib/ && \
    2to3 -w pkipplib.py

EXPOSE 9100

CMD ["python3","server.py"]
