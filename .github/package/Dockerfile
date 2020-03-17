FROM amazonlinux:2017.03
RUN yum -y install git \
    python36 \
    python36-pip \
    zip \
    && yum clean all

RUN python3 -m pip install --upgrade pip 

COPY entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt

ENTRYPOINT ["sh", "/entrypoint.sh"]