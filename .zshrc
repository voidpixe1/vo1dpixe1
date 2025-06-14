#┌───────┐#
#│aliases│#
#└───────┘#

# why?
kms() {command systemctl poweroff "$@"}
revive() {command reboot "$@"}
filemanager() {command yazi "$@"}

# some qol changes
sudo() {command sudo -E "$@"}
ls() {command eza --icons "$@"}
eval "$(zoxide init --cmd cd zsh)"

# bash sht
autoload -U compinit && compinit

# java
export JAVA_HOME=/opt/java/jdk-21.0.7+6
export PATH=$JAVA_HOME/bin:$PATH

# QT applications
export QT_QPA_PLATFORMTHEME=qt6ct

# VIM
vi() {command nvim "$@"}
vim() {command nvim "$@"}
export EDITOR="nvim"

# Set up fzf key bindings and fuzzy completion
export FZF_DEFAULT_OPTS="
--ansi
--layout="reverse"
--preview-window=right:45%:border-sharp
--color=fg:#d4be98,fg+:#ea6962,bg:-1,bg+:-1
--color=hl:#a9b665,hl+:#d3869b,info:#d8a657,marker:#b0c47f
--color=prompt:#9dc6b0,spinner:#ea6962,pointer:#ea6962,header:#d8a657
--color=border:#d4be98,label:#a9b665,query:#9dc6b0
--border=sharp
--border-label=''
--prompt=' '
--marker=''
--pointer=''
--separator='━'
--scrollbar='┃'
"

# Add directories to PATH (in order of preference)
export PATH="$HOME/.local/bin:$HOME/bin:$HOME/go/bin:$PATH":$HOME/.cargo/bin

# blender
export PATH="$HOME/blender:$PATH"

# bat themes
export BAT_THEME=gruvbox-material-dark

# yazi
yazi() {
    FZF_DEFAULT_OPTS="
    --ansi
    --layout=reverse
    --preview='bat {}'
    --preview-window=right:64%:border-sharp
    --color=fg:#d4be98,fg+:#ea6962,bg:-1,bg+:-1
    --color=hl:#a9b665,hl+:#d3869b,info:#d8a657,marker:#b0c47f
    --color=prompt:#9dc6b0,spinner:#ea6962,pointer:#ea6962,header:#d8a657
    --color=border:#d4be98,label:#a9b665,query:#9dc6b0
    --border=sharp
    --border-label=''
    --prompt=' '
    --marker=''
    --pointer=''
    --separator='━'
    --scrollbar='┃'
    " command yazi "$@"
}

# zoxide
eval "$(zoxide init zsh)"

#┌─────────────┐#
#│customization│#
#└─────────────┘#

# Prompt
if [[ "$NVIM" == *nvim* ]]; then
PS1="%F{#a89984}: %~%f
%F{#8ec072}:%f "
else
git_prompt() {
    local branch="$(git symbolic-ref --short HEAD 2> /dev/null)"
    [ -n "$branch" ] && echo " $branch "
}
PS1="%B%K{#a89984}%F{#282828} %~ %F{#a89984}%K{#928374}%F{#282828}%K{#928374}$(git_prompt)%F{#928374}%K{#665c54}%k%F{#665c54}%b
%K{#928374}%F{#a89984}%K{#665c54}%F{#928374}%k%F{#665c54}%f "
PS2='%K{#665c54}%F{#928374}%k%F{#665c54}%f '
fi

# completions
zstyle ':completion:*' menu select

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
