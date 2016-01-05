#!/bin/bash
#Script to get all repositories for a u from bitbucket
#Usage: getAllRepos.sh [username]
curl -u ${1} https://bitbucket.org/api/1.0/user/repositories/ > repoinfo
