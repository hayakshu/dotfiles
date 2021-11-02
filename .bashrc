# Prompt Scheme
# ===========================================
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function prompt_init {
  # Colors 
  local CYAN="\[\e[38;5;39m\]"
  local ORANGE="\[\e[38;5;172m\]" 
  
  # Reset Color
  local RESET="\[\e[0m\]" 
  
  # Prompts  
  export PS1="[$CYAN\u$RESET]:\w$ORANGE$(parse_git_branch)$RESET$ "
  export PS2='> '
  export PS3='+ '
}

# Alias
# ============================================
function alias_init {
  # LS
  alias ls='ls -p'
}

# Export Variables
# ============================================
function export_var {
  # Prompt Color Scheme
  export CLICOLOR=1
}

prompt_init
export_var
alias_init
