FROM ubuntu:14.04
MAINTAINER Sukru Uzel <sukru.uzel@gmail.com>

# Environments
ENV WSO2MDM_VERSION 2.2.0
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV WSO2MDM_HOME /wso2emm-$WSO2MDM_VERSION
ENV PATH $PATH:$WSO2MDM_HOME/bin

RUN dpkg-divert --local --rename --add /sbin/initctl && \
    ln -sf /bin/true /sbin/initctl && \
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

# Requirements
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y git software-properties-common tar unzip wget

# Java
RUN apt-get -y install python-software-properties && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    apt-get install -y --no-install-recommends oracle-java8-installer

# WSO2 EMM
RUN wget --user-agent=testuser --referer=http://connect.wso2.com/wso2/getform/reg/new_product_download \
    http://product-dist.wso2.com/products/enterprise-mobility-manager/$WSO2MDM_VERSION/wso2emm-$WSO2MDM_VERSION.zip && \
    unzip wso2emm-$WSO2MDM_VERSION.zip && \
    rm wso2emm-$WSO2MDM_VERSION.zip

# Expose
EXPOSE 9763 9443

# Clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Start
CMD ["/bin/bash", "-c", "wso2server.sh", "start"]