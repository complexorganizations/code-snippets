# Remove git history.
function remove-git-history() {
    git checkout --orphan tmp-main
    git add -A
    git commit -m "Updates are performed automatically. $(date)"
    git branch -D main
    git branch -m main
    git push -f origin main
}


function remove-ignore-files() {
    git clean -xdf
}
