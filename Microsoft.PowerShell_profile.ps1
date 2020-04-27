function .. { set-location .. }

function ... { set-location ... }

function cb { set-location c:/_dev/cre-bus-fra/CREBusFra.Web }

function x {
    Invoke-command -ScriptBlock {exit}
}

function v {
    nvim $args
}

function vim {
    v $args
}

Remove-Alias -Name gps -Force
Remove-Alias -Name gc -Force

# Git methods

function Get-Git-CurrentBranch {
	git symbolic-ref --quiet HEAD *> $null

	if ($LASTEXITCODE -eq 0) {
		return git rev-parse --abbrev-ref HEAD
	} else {
		return
	}
}

function g {
    git $args
}

function gap {
    $branch_name = Get-Git-CurrentBranch
	git add .
	git commit -m "$args"
	git push -u origin $branch_name
}

function gs {
	git status $args
}

function ga{
    git add
}

function gb{
    git branch
}

function gbD{
    git branch -D
}

function gbd{
    git branch -d
}

function gc{
    git clean -f
}

function gca{
    git commit --amend
}

function gck{
    git checkout
}

function gcb{
    git checkout -b
}

function gcd{
    git checkout develop
}

function gcm{
    git checkout master
}

function gct{
    git commit
}

function gcrp{
    git cherry-pick
}

function gd{
    git diff
}

function gdc{
    git diff --cached
}

function gdh{
    git diff HEAD
}

function gdp{
    git checkout develop && git pull
}

function gf{
    git fetch --prune
}

function gi{
    git init
}

function gl{
    git checkout -
}

function gls{
    git ls-files
}

function gm{
    git merge
}

function gma{
    git merge --abort
}

function gmc{
    git merge --continue
}

function gmm{
    git merge master
}

function gmp{
    git checkout master && git pull
}

function gmt{
    git mergetool
}

function gmv{
    git mv
}

function gp{
    git pull
}

function gpf{
    git push -f
}

function gps {
    git push
}

function grb{
    git rebase
}

function grba{
    git rebase --abort
}

function grbc{
    git rebase --continue
}

function grbod{
    git rebase origin/develop
}

function grbod{
    git rebase origin/develop
}

function grbom{
    git rebase origin/master
}

function grh{
    git reset --hard
}

function grhom{
    git reset --hard origin/master
}

function grm{
    git rm
}

function grs{
    git reset --soft
}

function gs{
    git status
}

function gsa{
    git stash apply
}

function gsc{
    git stash clear #clear all the stashes
}

function gsd{
    git stash drop
}

function gsl{
    git stash list
}

function gsp{
    git stash pop
}

function gst{
    git stash
}

function gcl{
    gap cleanup
}

function gbf {
  git checkout CRE-$args
}

function gbb {
  git checkout CRE-$args
}

function gnb {
  git checkout -b CRE-$args #checking out a new branch
}

function gnf {
  git checkout -b CRE-$args #checking out a new branch
}

function gbr {
  git checkout release/$args
}

function gnr {
  git checkout release/$args
}

function get_branch_name {
    $branch_name = Get-Git-CurrentBranch
    return $branch_name
}

function gac {
  $branch_name=get_branch_name
  git add .
  git commit -m "$*"
}

function gap {
  $branch_name=get_branch_name
  git add .
  git commit -m "$*"
  git push -u origin $branch_name
}

function gcp {
  $branch_name=get_branch_name
  git commit -m "$*"
  git push -u origin $branch_name
}

function gcap {
  $branch_name=get_branch_name
  git add .
  git commit --amend --no-edit
  git push -u -f origin $branch_name
}

function gpu {
  $branch_name=get_branch_name
  git push --set-upstream origin $branch_name
}

function grc {
  $branch_name=get_branch_name
  git add .
  git commit -m "review comments"
  git push -u origin $branch_name
}

function gco {
    git clone "$args" && cd "$(basename "$args" .git)"
}
