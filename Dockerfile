FROM ubuntu:latest

# 更新apt-get并安装必要的软件包
RUN apt-get update -y
RUN apt-get install -y wget bzip2 ca-certificates git

# 安装Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
RUN bash miniconda.sh -b -p /opt/conda
RUN rm miniconda.sh

# 将Conda添加到系统路径
ENV PATH="/opt/conda/bin:$PATH"

# 设置conda初始化脚本
RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc

# 在conda中创建一个新环境
RUN conda create -n LRAPsv python=3.9.5 -y

# 指定使用该环境
RUN /bin/bash -c "source activate LRAPsv"
RUN pip install sniffles==2.0.7
RUN conda install -c bioconda -y bcftools 
RUN conda install -c bioconda -y tabix 
# RUN conda install -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main -y git
RUN git clone https://github.com/Roick-Leo/LRAPsv.git /tools
ENV PATH="/tools/LRAPsv:$PATH"

# 指定容器启动时默认使用的命令
CMD ["conda activate LRAPsv"]