#!/bin/bash

# set environment variables used in deploy.sh and AWS task-definition.json:
export IMAGE_NAME=todo
export IMAGE_VERSION=latest

export AWS_DEFAULT_REGION=eu-central-1
export AWS_ECS_CLUSTER_NAME=ecs-optimized
export AWS_VIRTUAL_HOST=todo.alexpc.org
export VIRTUAL_PROTO=https
export VIRTUAL_PORT=5000

# set any sensitive information in travis-ci encrypted project settings:
# required: AWS_ACCOUNT_NUMBER, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY