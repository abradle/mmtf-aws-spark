# Java 8 base image
FROM java:8
MAINTAINER RCSB PDB <docker@rcsb.org>
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update
# Build all the Python stuff
RUN apt-get install -y build-essential python-dev python-numpy git python-setuptools python-pip
RUN pip install mmtf-pyspark
ENTRYPOINT ["python","/usr/local/lib/python2.7/dist-packages/run/shell.py"]
