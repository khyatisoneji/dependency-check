FROM registry.access.redhat.com/ubi8/ubi
RUN yum install -y go; yum clean all
RUN rpm -i https://github.com/fabric8-analytics/cli-tools/releases/download/v0.1.2/crda_0.1.2_Linux-64bit.rpm
RUN yum install jq -y