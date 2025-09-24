#!/bin/bash

set -x

# Set the repository URL
# REPO_URL="https://https://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@github.com/Gonepalli-Srikanth/devsecops-demo"
git clone https://github.com/Gonepalli-Srikanth/devsecops-demo.git /temp/temp_repo

#     git config user.email "ci-bot@example.com"
#     git config user.name "Azure DevOps CI"
#     git remote set-url origin https://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@github.com/yourusername/yourrepo.git
#     git add .
#     git commit -m "Automated commit"
#     git push origin main
  


# Clone the git repository into the /tmp directory
# git clone "$REPO_URL" /tmp/temp_repo

# Navigate into the cloned repository directory
cd /tmp/temp_repo

# Make changes to the Kubernetes manifest file(s)
# For example, let's say you want to change the image tag in a deployment.yaml file
sed -i "s|image:.*|image: <REGISTRY-NAME>/$1:$2|g" kubernetes/deployment.yaml

git config --global user.name "Gonepalli Srikanth"
git config --global user.email g.sri843@gmail.com
git push origin main


# Add the modified files
git add .

# Commit the changes
git commit -m "Update Kubernetes manifest"

# Push the changes back to the repository
git push

# Cleanup: remove the temporary directory
rm -rf /tmp/temp_repo
