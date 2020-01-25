FROM python:3.7

RUN apt-get -y update

RUN mkdir -p /flumine
RUN mkdir -p /flumine/tmp

COPY certs /certs
COPY flumine/main.py /flumine


# install py libraries
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt


WORKDIR /flumine
CMD python main.py