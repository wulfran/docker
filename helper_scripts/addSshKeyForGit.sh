#!/bin/bash

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_deploy_stage