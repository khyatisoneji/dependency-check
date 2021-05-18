FROM registry.access.redhat.com/ubi8/ubi
RUN yum install -y go; yum clean all
RUN rpm -i https://github.com/fabric8-analytics/cli-tools/releases/download/v0.2.0/crda_0.2.0_Linux-64bit.rpm
RUN yum install jq -y