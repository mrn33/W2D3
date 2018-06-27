cat <<EOF >> ~/.aliases
function git_change_authorship {
  git filter-branch -f --env-filter "
    GIT_AUTHOR_NAME=\"\$1\"
    GIT_AUTHOR_EMAIL=\"\$2\"
    GIT_COMMITTER_NAME=\"\$1\"
    GIT_COMMITTER_EMAIL=\"\$2\"
  "
}
alias gca=git_change_authorship
EOF
source ~/.aliases