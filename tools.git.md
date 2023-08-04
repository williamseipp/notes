## setup
## creating a repository
## tracking change
## configure name, email, credentials
## commit messages
























## setup

`git config --global user.name "name"`
`git config --global user.email "email"`

`git config --global user.helper cache`
`git config --global user.helper store`














## creating a repository

`git init`                  turn a folder into a git "repo"

`git remote add origin remote.git`
add remote.git as a remote repository with the alias "origin"

`git clone 'remote_repo'`
creates a copy of remote_repo locally, sets upstream to remote_repo

`git add filename`

`git commit -m message`     
commits staged files with message







## tracking change
`git status`


`git log`
shows commit history

`git diff 'file_name`
show differences between saved/unsaved versions of 'file_name'

`git push -u origin main`
tells git to track remote repository "origin/main" 
and use it for push,pull

`git diff origin/main main`
compare a modified local repo to the original remote

`git fetch`
downloads from a remote, but doesnt commit those changes

`git pull --ff-only`
git fetch and git "fast-forward merge" in one command









## commit messages
good commit messages explain WHY a change was made
however, a branching strategy is necessary to provide
larger context.

For example, "add flexibile loan duration" describes a
feature that was made. This should actually be a branch
name.
