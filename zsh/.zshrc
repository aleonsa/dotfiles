# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# custom zsh config folder (change if necessary)
export CUSTOM_ZSH_FOLDER="$HOME/dotfiles/zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

plugins=(git zoxide tmux fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#

# modified bash config for zsh
source "$CUSTOM_ZSH_FOLDER/shell"
source "$CUSTOM_ZSH_FOLDER/aliases"
source "$CUSTOM_ZSH_FOLDER/functions"
source "$CUSTOM_ZSH_FOLDER/init"
source "$CUSTOM_ZSH_FOLDER/envs"

# tmux-git-autofetch() {(/home/aleon/.tmux/plugins/tmux-git-autofetch/git-autofetch.tmux --current &)}
# add-zsh-hook chpwd tmux-git-autofetch

export PATH="/opt/homebrew/bin:$PATH"

# Source local secrets file if it exists
if [[ -f ~/.zsh_secrets ]]; then
  source ~/.zsh_secrets
fi
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/aleon/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

# bun completions
[ -s "/Users/aleon/.bun/_bun" ] && source "/Users/aleon/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by Antigravity
export PATH="/Users/aleon/.antigravity/antigravity/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aleon/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/aleon/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/aleon/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/aleon/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
