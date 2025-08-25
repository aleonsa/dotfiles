# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="jonathan"

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

# modified bash config for zsh (from omarchy baseline)
source ~/.local/share/omarchy/default/zsh/shell
source ~/.local/share/omarchy/default/zsh/aliases
source ~/.local/share/omarchy/default/zsh/functions
source ~/.local/share/omarchy/default/zsh/init
source ~/.local/share/omarchy/default/zsh/envs

tmux-git-autofetch() {(/home/aleon/.tmux/plugins/tmux-git-autofetch/git-autofetch.tmux --current &)}
add-zsh-hook chpwd tmux-git-autofetch
    
