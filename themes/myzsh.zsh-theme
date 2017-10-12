
###variables###
local host_name="%n"
local path_string="%2c"
local prompt_string="["

###sources###
#source "/root/.oh-my-zsh/custom/themes/cust/vcs.zsh"
#source "/root/.oh-my-zsh/custom/themes/cust/icons.zsh"
source /root/.oh-my-zsh/custom/themes/cust/zsh-git-prompt/zshrc.sh
###gitprompt###
# oh-my-zsh $(git_prompt_info) puts 'dirty' behind branch
git_custom_prompt() {
  # branch name (.oh-my-zsh/plugins/git/git.plugin.zsh)
  local branch=$(current_branch)
  if [ -n "$branch" ]; then
    # parse_git_dirty echoes PROMPT_DIRTY or PROMPT_CLEAN (.oh-my-zsh/lib/git.zsh)
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$branch$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}
###prompts###
# Default values for the appearance of the prompt. Configure at will.
ZSH_THEME_GIT_PROMPT_PREFIX="%f"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
#ZSH_THEME_GIT_PROMPT_SEPARATOR=""
#ZSH_THEME_GIT_PROMPT_BRANCH="%F{yellow}%f"
ZSH_THEME_GIT_PROMPT_BRANCH_PREFIX=" "
ZSH_THEME_GIT_PROMPT_BRANCH_SUFFIX="%F{green}%f"
ZSH_THEME_GIT_PROMPT_STAGED="%F{green}●%f"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%F{red}●%f"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{yellow}%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{#FFFFFF}✔%f"

PROMPT='%F{red}%n:%F{green}%2c%F{blue}[%f '
RPROMPT='$(git_super_status) %F{blue}] %F{green}%D{%L:%M} %F{yellow}%D{%p}%f'

###call###
####
