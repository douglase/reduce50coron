ARG OWNER=jupyter
ARG BASE_CONTAINER=$OWNER/base-notebook
FROM $BASE_CONTAINER

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root

# Install all OS dependencies for fully functional notebook server
RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    # Common useful utilities
    git \
    wget \
    nano-tiny \
    tzdata \
    unzip \
    vim-tiny \
    python3-pip \
    curl \
    # git-over-ssh
    openssh-client \
    # less is needed to run help in R
    # see: https://github.com/jupyter/docker-stacks/issues/1588
    less \
    # nbconvert dependencies
    # https://nbconvert.readthedocs.io/en/latest/install.html#installing-tex
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-plain-generic \
    # Enable clipboard on Linux host systems
    xclip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install numpy==1.21.5 matplotlib==3.5.1 scipy==1.7.3 pandas==1.4.2 astropy
RUN pip install multiprocess NonnegMFPy
#RUN pip install --user -e git+https://github.com/seawander/nmf_imaging.git#egg=nmf-imaging

# Create alternative for nano -> nano-tiny
RUN update-alternatives --install /usr/bin/nano nano /bin/nano-tiny 10

WORKDIR /tmp
RUN wget https://github.com/seawander/nmf_imaging/archive/refs/tags/v2.0.tar.gz \
                    && tar -xf v2.0.tar.gz\
                    && cd nmf_imaging-2.0 \
                    && python setup.py install
WORKDIR /tmp
RUN wget https://github.com/seawander/centerRadon/archive/refs/tags/v1.0.tar.gz && \
    tar -xf v1.0.tar.gz && \
    cd centerRadon-1.0 && \
    python3 setup.py develop
WORKDIR /tmp
RUN git clone https://bitbucket.org/pyKLIP/pyklip.git && \
    cd  pyklip && \
    python3 setup.py develop

WORKDIR /home/jovyan/
# Switch back to jovyan to avoid accidental container runs as root
USER ${NB_UID}
