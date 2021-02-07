export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
eval "$(rbenv init -)"
alias gx="git commit"
alias gunstage="git reset HEAD --"
alias gst="git status"
alias gb="git checkout -b"
alias gamend="git commit --amend --no-edit"
alias gl="git pull"
alias gp="git push"
alias gc="git checkout"
alias g="git"
alias gdbs="git branch --merged master | grep -v '^\*' | xargs -n 1 git branch -d"

alias rubofix='git diff --name-only --cached | xargs ls -1 2>/dev/null | xargs bundle exec rubocop -a'

alias backstart='foreman start -f Procfile.dev -e .env.dev'

echo I love rainbows and horny horses | lolcat -a -d 50

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[35m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
alias gpsup='git push --set-upstream origin $(git_current_branch)'

alias gprettylog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# increase size of bash history so we can control-R to find old commands
export HISTFILESIZE=10000
export HISTSIZE=10000

