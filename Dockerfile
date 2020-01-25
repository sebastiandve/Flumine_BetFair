FROM python:3.7

RUN apt-get -y update

COPY certs /flumine/certs
COPY flumine/main.py /flumine


# install py libraries
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt


WORKDIR /flumine
RUN mkdir -p /flumine/tmp
CMD python main.py