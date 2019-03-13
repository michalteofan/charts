#!/bin/bash

echo "helm package sources/michapp -d repo/"
helm package sources/michapp -d repo/
echo
echo "helm package sources/michapp-ibmcloud -d repo/"
helm package sources/michapp-ibmcloud -d repo/
echo
echo "helm repo index --url https://raw.githubusercontent.com/michalteofan/charts/master/repo /home/michal/projects/charts/repo/"
helm repo index --url https://raw.githubusercontent.com/michalteofan/charts/master/repo /home/michal/projects/charts/repo/
echo
echo "git add ."
git add .
echo
echo "git commit -m $1"
git commit -m $1
echo
echo "git push"
git push
