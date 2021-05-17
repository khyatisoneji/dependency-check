FROM centos:latest
RUN rpm -i https://github.com/fabric8-analytics/cli-tools/releases/download/v0.2.0/crda_0.2.0_Linux-64bit.rpm
RUN yum install jq -y

FROM python:3
RUN pip install --no-cache-dir --upgrade pip
CMD ["cat", "/etc/os-release"]