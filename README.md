# BitbucketDownloader
Download all the repositories in bitbucket

# Installation
```shell
sudo cpan JSON
```
# Usage
1. Setup rsa ssh keys in .ssh apropriately (so that you have ssh access to repositories)
2. Create a list with all the repositories
```shell
  bash getAllRepos.sh \<bitbucket username\>
```
3. Parse the list and download all the repositories in the directory repos/\<reponame\>
```shell
  perl parseJSON.perl
```
# TO Do

Support to pull changes automatically.
