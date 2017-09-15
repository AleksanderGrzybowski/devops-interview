#!/usr/bin/env bash

REGISTRY=139.59.143.165:5000

docker build -t "${REGISTRY}/frontend:latest" frontend
docker push "${REGISTRY}/frontend:latest"

docker build -t "${REGISTRY}/backend:latest" backend
docker push "${REGISTRY}/backend:latest"
