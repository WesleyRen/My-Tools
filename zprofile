export ORACLE_HOME=/Library/instantclient_12_1
# DYLD_LIBRARY_PATH=$ORACLE_HOME
# export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export TNS_ADMIN=/Mac_stuff/Oracle/product/ADMIN
export SQLPATH=/Mac_stuff/Perf_MRU:/Mac_stuff/USB_sync/Doc_etc/Doc_Tech/Oracle:$ORACLE_HOME
export PATH=$PATH:$ORACLE_HOME:/Mac_stuff/my_work/port_fwd:/Users/wren1/Downloads/gqlplus-1.12:/opt/local/bin:/Applications/Octave.app/Contents/Resources/bin:/Users/wren1/apache-maven-3.5.4/bin
# adding mysql
#export PATH=$PATH:~/mysqlc:~/mysqlc/bin:/usr/local/mysql:/usr/local/mysql/bin
export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
export PATH=$PATH:~/sqlite
export PATH=$PATH:~/Development/android-sdk-macosx/platform-tools/:/usr/local/opt/gradle/bin/gradle
export CLASSPATH=.:/usr/share/java/*/*/*:/usr/share/java/ant-1.7.1/*/*:/usr/share/java/ant-1.7.1/*
export CLASSPATH=$CLASSPATH:/Mac_stuff/java_stuff/algs4/*
export CLASSPATH=$CLASSPATH:~/.p2/pool/plugins/org.junit_4.12.0.v201504281640/junit.jar

#Set erase to ctrl H, so that ctrl H will work in sql*plus
stty erase 

#/Mac_stuff/zren/Encrypted/auto_mount.sh
#alias ls='ls -F'
alias ssh='ssh  -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias master='git fetch origin; git rebase origin/master'
p4='/Applications/p4merge.app/Contents/MacOS/p4merge'
if [ -f $p4 ]; then
  alias p4merge='/Applications/p4merge.app/Contents/MacOS/p4merge'
  alias pdiff='/Applications/p4merge.app/Contents/MacOS/p4merge'
fi
alias jest='./node_modules/jest/bin/jest.js'

# Set up ssh-agent and add identity...
# eval "$(ssh-agent -s)"

# trap "$HOME/.logout" 0
# Set up ssh-agent. Done

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export HISTFILESIZE=5000

export TERM=vt100
#alias grepf='grep -H $1 $2 -R | cut -d: -f1'
alias rplus='rlwrap sqlplus -l'

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

# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

# LiquiBase stuff:
export LIQUIBASE_HOME=/Users/wren1/Downloads/liquibase-2.0.5-bin
export PATH=$PATH:$LIQUIBASE_HOME

# Prompt:
if [ -z "$PS1" ]; then
   return
fi

##
# Your previous /Users/wren1/.bash_profile file was backed up as /Users/wren1/.bash_profile.macports-saved_2013-03-19_at_11:34:24
##

# MacPorts Installer addition on 2013-03-19_at_11:34:24: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# some temporary stuff:
git config --global user.name "Wesley Ren"
git config --global user.email "wren@walmartlabs.com"
export r2d2='/Mac_stuff/WalmartLabs/git_stuff/DB_MON/r2d2'
export dev_conf='/Mac_stuff/WalmartLabs/git_stuff/DB_MON/r2d2/etc/conf-database_metrics/dev'

# EC2 stuff
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# default to Java 8
java8

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export EC2_HOME=~/Downloads/ec2-api-tools-1.6.8.0
export PATH=$PATH:$EC2_HOME/bin 

alias show='cat ~/hosts.txt | egrep "^alias|^!" |egrep -v "^#" |cut -f2- -d" "'
home_dir=`echo ~`
if [[ ${home_dir} = $PWD  && -f hosts.txt ]]; then
  [ -f ./temp.sh ] && rm ./temp.sh
  cat hosts.txt | grep alias | while read line; do
    echo $line >> ./temp.sh
  done
  chmod 750 temp.sh; . ./temp.sh; 
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

export JYTHON_HOME=/Users/wren1/jython2.5.3
#export PATH=$PATH:$JYTHON_HOME

export LEJOS_HOME=/Mac_stuff/FLL/leJOS/leJOS_EV3_0.8.1-beta
export PATH=$PATH:$LEJOS_HOME/bin
export CLASSPATH=$CLASSPATH:.:$LEJOS_HOME/lib/ev3/ev3classes.jar:$LEJOS_HOME/lib/ev3/dbusjava.jar
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs. 
        # remote connections. Percent-escape spaces.
  local SEARCH=' '
  local REPLACE='%20'
  local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
  printf '\e]7;%s\a' "$PWD_URL"
    }   

##
# Your previous /Users/wren1/.bash_profile file was backed up as /Users/wren1/.bash_profile.macports-saved_2015-01-16_at_19:37:17
##

# MacPorts Installer addition on 2015-01-16_at_19:37:17: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias hstart="/usr/local/Cellar/hadoop/2.6.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.6.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/stop-dfs.sh"

test -r /sw/bin/init.sh && . /sw/bin/init.sh

test -f ~/.profile && source ~/.profile
if [ -e /Users/wren1/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/wren1/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
#alias node='node --harmony --use-strict --harmony_destructuring --harmony_default_parameters '
alias bode='babel-node -- '
alias bode='babel-node -- '
alias bodemon='nodemon --exec babel-node -- -- '

##
# Your previous /Users/wren1/.bash_profile file was backed up as /Users/wren1/.bash_profile.macports-saved_2016-10-04_at_16:16:44
##

# MacPorts Installer addition on 2016-10-04_at_16:16:44: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

test -r /sw/bin/init.sh && . /sw/bin/init.sh

#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export GOPATH=/Users/wren1/stuff/github/golang/goworkspace
export GOBIN=/Users/wren1/stuff/github/golang/goworkspace/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/wren1/.sdkman"
[[ -s "/Users/wren1/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/wren1/.sdkman/bin/sdkman-init.sh"

export iTerm2_log_dir="/temp/iTerm2_log"
#export TOMCAT_HOME='/Library/Tomcat'

#export DERBY_HOME="/Users/wren1/db-derby-10.14.2.0-bin"
#export PATH="$PATH:$DERBY_HOME/bin"

#export SONAR_SCANNER_HOME="/temp/temp/sonar-scanner-3.2.0.1227-macosx"
#export PATH="$PATH:$SONAR_SCANNER_HOME/bin"

# MacPorts Installer addition on 2018-11-02_at_18:23:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


#export NVM_DIR="/Users/wren1/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#alias clapstart="nvm use node; clap dev"

# alias to make a symbolic link in root dir
# /System/Volumns/Data/log has to exist.
alias root_log="echo -e 'log\tSystem/Volumes/Data/log' | sudo tee -a /etc/synthetic.conf"


# NVM bash initialize BEGIN - do not modify #
export NVM_HOME="${HOME}/nvm"
NVM_SH="${NVM_HOME}/bin/nvm.sh"
if [ -s "${NVM_SH}" ]; then
  export NVM_LINK="${HOME}/nvm/nodejs/bin"
  export NVM_NODEJS_ORG_MIRROR="https://repository.walmart.com/content/repositories/nodejs/"
  source "${NVM_SH}"
else
  unset NVM_HOME
  NVM_ERROR="${NVM_SH} is not valid"
fi
unset NVM_SH
# NVM bash initialize END - do not modify #
