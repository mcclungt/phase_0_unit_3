## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add (filename)
Adds files that have been changed in the working directory to the remote repository.

#### branch
List all the branches in your repository as well as which branch you are currently in.

#### checkout (branch)
Switch current branch or create a new branch.

#### clone (location)
Creates a local repository for the remote source listed. It also saves the remote location and allows you to push to it if you have the necessary permissions.

#### commit (message)
Commit changes to the local repository.

#### fetch
Fetch all changes to the remote repository that aren't present in the local repository.

#### log
Shows a list of commits on a branch.

#### merge (new branch)
Merges a branch into your current branch, also commits if able.

#### pull
Similar to fetch, gets all changes to remote repository and applies them to local.

#### push
Pushes changes to local repository onto the remote repo.

#### reset
Resets your working directory to the state that it was in at the last commit.

#### rm (filename)
Removes files from the local and remote repository.

#### status
Compares status of working directory to that of the remote repo.

## Release 3: Git Workflow

- Push files to a remote repository
	git push origin master

- Fetch changes
	git fetch upstream
	git merge upstream/master

- Commit locally
	git commit -m "comment"

# Reflection
Whether I'm able to memorize all the git commands or not, I still find it
hard to believe that I'll be using git (not the github app) exclusively in
the future. It took me more time to finish the commit than it took me to
get all the data for the content of this file. While it does seem like an
interesting concept to use the command line almost exclusively, I'm still
adjusting.