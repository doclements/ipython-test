USER root

# Add dependency
RUN apt-get update

RUN apt-get install -y libhdf5-8 libnetcdf-dev

USER main

# Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
