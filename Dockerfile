# Docker file for data_analysis_pipeline_eg
# Tiffany Timbers, Dec, 2017

# use rocker/tidyverse as the base image and
FROM rocker/tidyverse

# then install the cowsay package
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  && install2.r --error \
    --deps TRUE \
    cowsay

# install python 3
RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

# get python package dependencies
RUN apt-get install -y python3-tk

# install numpy, pandas & matplotlib
RUN pip3 install numpy
RUN pip3 install pandas
RUN apt-get update && \
    pip3 install matplotlib && \
    rm -rf /var/lib/apt/lists/*