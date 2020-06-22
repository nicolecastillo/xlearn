FROM python:3.7-slim-buster as base
ENV USER=root
RUN apt update && \
    apt install -y cmake g++ && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY . /xlearn

# build from source (installs to /usr/local/lib/python3.7/site-packages/)
RUN cd /xlearn && \
    ls -l && \
    ./build.sh && \
    rm -r /xlearn

# install other library (installs to same site-packages path)
RUN pip install --no-cache-dir sklearn pandas==1.0.4 liblinear==2.11.2
