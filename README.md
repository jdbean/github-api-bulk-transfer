# github-api-bulk-transfer
A utility for transferring multiple GitHub repositories to a new owner (user or organization). There are lots of reasons to want to transfer repositories to new owners. One example is using GitHub organizations to organize your repositories. The web workflow for transferring ownership of a single repository is tedious and the tedium quickly becomes untenable for users looking to move repositories in bulk. An **UNSUPPORTED AND UNSTABLE PREVIEW** feature for repository transfer has recently been introduced to the GitHub API that allows this process to be automated. This BASH script takes a GitHub Personal Access Token (or password), a newline separated list of repositories, the current owner username, and the new owner name transfers the ownership of each repository to the specified new owner.

**THIS UTILITY IS PROVIDED WITH NO WARRANTY OF ANY SORT. USE OF THIS SOFTWARE IS DEPENDENT ON AN UNSTABLE PREVIEW API AND ITS USE COULD RESULT IN LOSS OF DATA AMONG OTHER CONSEQUENCES. USE OF THIS SOFTWARE IS EXCLUSIVELY AT YOUR OWN RISK**

## Preparation

0. Optionally create a new organization to transfer your repositories to
1. Create A GitHub Personal Access Token (Settings > Developer Settings > Personal Access Tokens)
2. Copy the list of all of your repos (Settings > Repositories) and paste them into an editor
3. Optionally use regex or the method of your choosing to filter the repos down to only the ones you want moved
4. Clean the repo information so that just the name remains (each name is followed by whitespace, and size/fork info): `%s/\s.*$//g`

## Usage

0. Clone this repository and open up a terminal in the root directory
1. Install `bash`, `curl`, & `jq` and any dependencies if you don't already have them installed
2. Replace the contents of `repos.txt` with a newline separated list of repositories to transfer in the following format: `REPO_NAME` (*See 'Preparation' above*)
3. Set your GitHub Personal Access Token (or password if you insist) as an environment variable named `GITHUB_SECRET`
4. Execute the program with your username (OWNER) and the name of the new owner (NEWOWNER): `bash bulk_transfer_repos.sh OWNER NEWOWNER` 


## License

All work in this repository is made available under the terms of the AGPLv3 License, a copy of which is provided in the file called `License`. Copyright J.D. Bean 2019
