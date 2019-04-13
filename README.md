# ubiquitous-enigma
this is testing push.

# install git and git-extras
sudo apt-get install git git-extras

# make git directory
mkdir git_work
cd git_work

# initialise 
git init

# create git repo "ubiquitous-enigma" and run
git remote add origin https://github.com/abhishekrwt/ubiquitous-enigma.git

# set user and email
git config --global user.name "Deadshot"
git config --global user.email "abhishek.rwt03@gmail.com"

# pull request
git pull origin master

# set branch to master
git branch --set-upstream-to=master

# add the file to staging area
git add README.md

# commit
git commit -m "updated_readme"

# push to repo
git push

# fetch for conflicts
git fetch origin master


