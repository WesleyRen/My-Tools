export PATH=$PATH:/opt/local/bin:/opt/homebrew/bin
# adding mysql

alias ssh='ssh  -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias master='git fetch origin; git rebase origin/master'
p4='/Applications/p4merge.app/Contents/MacOS/p4merge'
if [ -f $p4 ]; then
  alias p4merge='/Applications/p4merge.app/Contents/MacOS/p4merge'
  alias pdiff='/Applications/p4merge.app/Contents/MacOS/p4merge'
fi

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export HISTFILESIZE=5000

export TERM=vt100

# to run a command as root:
# sudo sh -c "<command>"

# emacs stuff
# ksh: Arrow keys to use history commands under the emacs command edition mode.
# I couldn't make them work for either ksh or bash.
#alias __A=`echo "\020"`   # mapping arrow key 'up'
#alias __B=`echo "\016"`   # mapping arrow key 'down'
#alias __C=`echo "\006"`   # mapping arrow key 'right'
#alias __D=`echo "\002"`   # mapping arrow key 'left'
#alias __H=`echo "\001"`   # mapping arrow key 'home'

# Prompt:
if [ -z "$PS1" ]; then
   return
fi

#############
# Shell env settings
#############
# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups  

# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
#############
# Shell env settings
#############

if [ -e /Users/wren1/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/wren1/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
