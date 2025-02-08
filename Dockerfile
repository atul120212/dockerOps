FROM redhat/ubi9

RUN yum install python39 -y
RUN yum install python3-pip

RUN pip3 install flask

WORKDIR /mycode

EXPOSE 5000

COPY ./app.py app.py

ENTRYPOINT [ "python3", "app.py" ]

