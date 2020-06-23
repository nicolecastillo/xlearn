FROM python:3.7-slim-buster as base

ENV USER=root

# install build dependencies and python libs to run benchmarks
RUN apt update && \
    apt install -y cmake g++ git octave && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    pip install --no-cache-dir sklearn pandas==1.0.4

# install csv2libsvm
RUN curl -LO https://raw.githubusercontent.com/zygmuntz/phraug2/8680747/csv2libsvm.py /usr/bin/csv2libsvm
    chmod +x /usr/bin/csv2libsvm

# install liblinear from source
RUN git clone https://github.com/cjlin1/liblinear /opt/liblinear && \
    cd /opt/liblinear/python && \
    make -j16
ENV PYTHONPATH=/opt/liblinear/python

# install xlearn from source
COPY . /xlearn
RUN cd /xlearn && \
    ls -l && \
    ./build.sh && \
    rm -r /xlearn
