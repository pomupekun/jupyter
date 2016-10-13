FROM python:3.6
RUN apt-get update
RUN pip install jupyter --upgrade pip
EXPOSE 8888
WORKDIR /jupyter
COPY setup.sh /jupyter
CMD ["/bin/bash /jupyter/setup.sh"]

