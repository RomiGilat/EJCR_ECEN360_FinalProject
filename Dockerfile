FROM python:3.11.7-slim
LABEL maintainer="Group EJRC: Erin Gehle, Jack Campbell, Romi Gilat, Case Alexander"
LABEL version="1.1"
LABEL description="ECEN 360 Final Project for Data Visualization"

RUN apt-get update -y
RUN apt-get install -y gcc
RUN apt-get install -y build-essential libpq-dev
RUN apt-get install -y graphviz

RUN pip install --upgrade pip

# Installing packages 
RUN pip install \
    pandas==2.2.2 \
    numpy==1.26.4 \
    matplotlib==3.8.4 \
    seaborn==0.13.2 \
    scikit-learn==1.4.2 \
    ipython==8.23.0 \
    jupyter==1.0.0

WORKDIR /home/notebooks/

CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0