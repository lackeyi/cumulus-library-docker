# Overview

This repo provides a quick start to use the cumulus-library tool. You will need to create a `credentials` file and provide your `aws_access_key_id` and `aws_secret_access_key`. Once that is in place, you can use the `./start.sh` to get the docker container up and running.

The startup script will mount /studies on the container to the studies folder in this repo. This should allow you to work with your study configurations and commit them to your repo easily.
