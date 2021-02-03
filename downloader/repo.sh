#!/bin/bash -ex
#sudo apt-get install curl ca-certificates git python
mkdir ~/bin/
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

# avoid prompts and errors
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git config --global color.ui true
