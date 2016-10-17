FROM python:3.6
RUN apt-get update
RUN pip install jupyter --upgrade pip
EXPOSE 8888
WORKDIR /notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--notebook-dir=/notebook", "--config=/conf/jupyter_notebook_config.py"]

