# Orientações

## 2 rules

 !   Never commit directly to master. Use feature branches   
 !   Always make sure git status is clean before pull, checkout or merge.

## Listing local branches

git branch

## Working on a new branch

git checkout -b customize-navbar   
git branch

We’ve created a new local branch called customize-navbar.   
Any new commit will only be applied to this branch.

## Pushing a branch to GitHub

git branch -a   
git push origin customize-navbar   
git branch -a

## Finishing a feature

Using branches, we work on different parts of a project at the same time.   
When a feature is finished, we’d like to merge commits back in master.

How?

## GitHub Pull Requests

### Looping over

### Getting master up to date

When a Pull Request is merged, a new commit is created on master.   
You need to fetch it on your local repository.   
Be very careful!

First, you need a CLEAN git status.

git status
#### Expected message
> On branch master   
> Your branch is up-to-date with 'origin/master'.   
> nothing to commit, working directory clean

### Get the latest master

#### Remember! You must have a **clean** git status
git checkout master   
git pull origin master

Then you can clean up local unused branches

git sweep

Colleagues may have added gems, NPM packages or change the DB schema:

bundle install   
yarn install   
rails db:migrate

### Merging master in your branches

Do you need something in master back into your current branch?

git status
#### MAKE SURE THIS IS CLEAN
git checkout add-description-to-restaurant   
git merge master



## In case of conflict (1)

Sometimes a Pull Request won’t be mergeable.

Why? master changed between the time you created the branch and now.

git status      # ⚠️ ⚠️ ⚠️ Make sure it's clean before proceeding   
git checkout master   
git pull origin master          # pull the latest changes   
git checkout unmergeable-branch # switch back to your branch   
git merge master                # merge the new changes from master into your branch   

#### 😱 Conflicts will appear. It's normal!
#### 👌 Open sublime and solve conflicts (locate them with cmd + shift + f `<<<<<`)
#### When solved, we need to finish the merge

git add .                           # add the files in conflict   
git commit --no-edit                # commit using the default commit message   
git push origin unmergeable-branch  # push our branch again




Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
