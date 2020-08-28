# Dockerfile - this is a comment. Delete me if you want.
FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install python-pip python-dev python-virtualenv -y
RUN pip install flask
RUN pip install flask_restful
RUN pip install flask-bootstrap
RUN pip install --upgrade pip
RUN pip install -U tensorflow==1.14
COPY . /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["app.py"]
EXPOSE 5000
