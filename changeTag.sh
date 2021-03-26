#!/bin/bash
sed "s/tagVersion/$1/g" pods.yml > flaskex-app-pod.yml
