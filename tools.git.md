git is a CLI tool for managing changing code
think of it as "saving"

turn a folder into a git "repository"
** git init **

** git add tools.git.md **
adds file to staging area

** git commit -m "adding first draft of notes" **
commits staged files with a message about why change
was made.

** git log **
shows commit history

** git remote add origin https://github.com/williamseipp/notes.git **
add github repo as a remote repository with the alias "origin"

** git push -u origin main **
tells git to track remote repository "origin/main" 
and use it for push,pull

** git diff origin/main main **
compare a modified local repo to the original remote

** git fetch **
downloads from a remote, but doesnt commit those changes

** git pull --ff-only **
git fetch and git "fast-forward merge" in one command

** git clone https://github.com/williamseipp/notes.git **
creates a copy of remote locally and automatically
sets upstream to remote
