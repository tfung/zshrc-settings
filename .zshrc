# dynamically changes node version if .nvmrc file exists in repo
autoload -U add-zsh-hook
load-nvmrc() {
    if [[ -f .nvmrc && -r .nvmrc ]]; then
        nvm use
    elif [[ $(nvm version) != $(nvm version default)  ]]; then
        echo "Reverting to nvm default version"
        nvm use default
    fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# git
alias gf='git fetch -all'
alias gs='git status'
alias gc='git checkout'
alias gl='git log --pretty=format:"%C(yellow)%h%Creset %Cred-%Creset %Cgreen%an, %ar%Creset %C(yellow)%Creset%Cred:%Creset %s"'
