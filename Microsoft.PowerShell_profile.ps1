function .. { set-location .. }
function ... { set-location ... }

function x {
    Invoke-command -ScriptBlock {exit}
}

function v {
    nvim $args
}

function vim {
    v $args
}

function gs {
	git status $args
}

function Get-Git-CurrentBranch {
	git symbolic-ref --quiet HEAD *> $null

	if ($LASTEXITCODE -eq 0) {
		return git rev-parse --abbrev-ref HEAD
	} else {
		return
	}
}
function gap {
    $branch_name = Get-Git-CurrentBranch
	git add .;
	git commit -m "$args";
	git push -u origin $branch_name;
}
