FROM nvidia/cuda:10.2-base-ubuntu18.04
RUN mkdir -p /workspace/softwares
WORKDIR /workspace/softwares
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
RUN bash Anaconda3-2019.10-Linux-x86_64.sh -b -p /workspace/softwares/anaconda
ENV PATH $PATH:/workspace/softwares/anaconda/bin
RUN echo "$PATH:/workspace/softwares/anaconda/bin" tee -a ~/.bashrc
RUN echo $PATH
RUN conda install -y pytorch torchvision cudatoolkit=10.1 -c pytorch

