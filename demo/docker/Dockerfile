FROM python:3.6

ENV USER=root

# Upgrade or install packages needed
RUN apt-get update && apt-get -y install \
    g++ \
    gcc \
    binutils \
    clang \ 
    cmake 

# Install xlearn
RUN git clone https://github.com/aksnzhy/xlearn.git 
RUN cd xlearn && ./build.sh
# Install liblinear
RUN cd ..
RUN git clone https://github.com/cjlin1/liblinear.git
RUN cd liblinear/python/ && make


ENTRYPOINT ["/bin/bash"]
