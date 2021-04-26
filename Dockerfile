FROM registry.access.redhat.com/ubi8/ubi
RUN yum install golang; yum clean all
RUN rpm -i https://github.com/fabric8-analytics/cli-tools/releases/download/v0.1.1/crda_0.1.1_Linux-64bit.rpm