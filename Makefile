#vars
IMAGENAME=airflow-dind
REPO=lcr.logicspark.com
VERSION=2.0.0-python3.8
IMAGEFULLNAME=${REPO}/${IMAGENAME}:${VERSION}

.PHONY: help build push all

help:
	    @echo "Makefile commands:"
	    @echo "build"
	    @echo "push"
	    @echo "all"

.DEFAULT_GOAL := all

build:
	    @docker build --pull -t ${IMAGEFULLNAME} .

push:
	    @docker push ${IMAGEFULLNAME}

all: build push
