dir=$(dirname $0)
source $dir/../git/git.plugin.zsh
source $dir/git-prompt.sh

HIDDEN_BRANCH_NAME=" <hidden-branch> "
GIT_HIDE_OPTION="zsh.hide-branch"

function git_prompt_info() {
  if [ ! "$(git config --get $GIT_HIDE_OPTION)" = "true" ]; then
        dirty="$(parse_git_dirty)"
      __git_ps1 "${ZSH_THEME_GIT_PROMPT_PREFIX//\%/%%}%s${dirty//\%/%%}${ZSH_THEME_GIT_PROMPT_SUFFIX//\%/%%}"
  else
      __git_ps1 "${ZSH_THEME_GIT_PROMPT_PREFIX//\%/%%}$HIDDEN_BRANCH_NAME${ZSH_THEME_GIT_PROMPT_SUFFIX//\%/%%}"
  fi
}
