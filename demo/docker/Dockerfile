FROM python:3.7-slim-buster AS base

# Upgrade or install packages needed
RUN apt-get update && apt-get -y install \
    g++ \
    cmake 

# Install xlearn and liblinear
RUN pip install xlearn==0.40a1 liblinear==2.11.2

FROM python:3.7-slim-buster AS lib
COPY --from=base /usr/local/lib/python3.7/site-packages /usr/local/lib/python3.7/

ENV USER=root

# Install git and xlearn demo test
RUN apt-get update && apt-get -y install git 
RUN git clone https://github.com/aksnzhy/xlearn

ENTRYPOINT ["/bin/bash"]
