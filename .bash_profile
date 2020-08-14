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

alias rubofix='git diff --name-only --cached | xargs ls -1 2>/dev/null | xargs bundle exec rubocop -a'

echo I love rainbows and horny horses | lolcat -a -d 50

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[35m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
