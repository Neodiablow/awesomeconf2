###My personal bashrc###

#includes
. /$HOME/.config/colors/colors.sh

###HISTORY settings

# donc keep redondant commands into the history
export HISTCONTROL=ignoredups
# number of line per session
export HISTSIZE=10000
# number of line in the log
export HISTFILESIZE=200000


#My PS1
PS1="\[$IBlue\]┌─[\[$White\]\u@\h\[$IRed\]]\[$IBlue\]─[\$(if [[ \$? == 0 ]]; then echo \"\[$IGreen\]\342\234\223\"; else echo \"\[$IRed\]\342\234\227\"; fi)\[$IBlue\]]─[\[$ICyan\]\w\[$IBlue\]]─[\[$IYellow\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[$IBlue\]]\n\[$IBlue\]└>\[$Color_Off\]"

#PS1="\033[01;37m\]┌─\[\033[01;34m\][\033[0;37m\]\u@\h\[\033[01;31m\]]\[\033[01;37m\]─[\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;92m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi)\033[01;37m\]]─[\[\033[01;36m\]\w\[\033[01;37m\]]─[\[\033[0;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[\033[1;37m\]]\n└>\[\033[00m\]"
#PS1="\[\033[01;37m\] \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "
#PS1="\n\[\033[1;37m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;34m\]\u@\h'; fi)\[\033[1;37m\])\$([[ \$? != 0 ]] && echo \"\342\224\200(\[\033[0;31m\]\342\234\227\[\033[1;37m\])\")\342\224\200(\[\033[1;34m\]\@ \d\[\033[1;37m\])\[\033[1;37m\]\n\342\224\224\342\224\200(\[\033[1;32m\]\w\[\033[1;37m\])\342\224\200(\[\033[1;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[\033[1;37m\])\342\224\200> \[\033[0m\]"
#PS1='${debian_chroot:+($debian_chroot)}┌─\[\033[01;34m\][\033[00m\]\u@\h\[\033[01;31m\]]\[\033[00m\]:\[\033[01;34m\]\w\[\e[00m\]\n└»\$'
#PS1="[\t] \[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ "


aa() { eval `ssh-agent`;} 
kgaston() { ssh-add /home/neodiablow/.ssh/konarchan_gaston.key;}
kgit() { ssh-add /home/neodiablow/.ssh/github;}
kelysia() { ssh-add /home/neodiablow/.ssh/neodiablow_elysia.key;}


#startDB() { pushd /usr/local/pgsql/bin; su postgres -c "/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l /usr/local/pgsql/data/logfile start"; popd; }
#stopDB() { pushd /usr/local/pgsql/bin; su postgres -c "/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile stop"; popd; }
#alias connectDB="/usr/local/pgsql/bin/psql"

pdfcli() { pdftohtml -stdout -i $1 | lynx -stdin; }

# Creates an archive from given directory
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

###Aliases
alias crunchradio='((sleep 2&&mplayer http://localhost:42013 &>/dev/null)&ssh -L 42013:localhost:42013 radio@crunchbanglinux-fr.org -p1636)'
alias crunchradiov='((sleep 2&&cvlc http://localhost:42013 &>/dev/null)&ssh -L 42013:localhost:42013 radio@crunchbanglinux-fr.org -p1636)'
alias irc='screen -S irc irssi'

alias "yolo"='sudo'
alias ls..='ls ..'
alias cd..='cd ..'
alias ll='ls --color=auto -lhF'
alias lla='ls --color=auto -lahF'
alias la='ls --color=auto -a'
alias llrt='ll -rt'
alias ls='ls --color=auto'
alias dhclient='sudo dhclient'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias df='df -h'
alias du='du -h'
alias frequency='history | cut -c8- | sort | uniq -c | sort -rn | head -20'
eval "`dircolors -b`"

#One letters
alias h='htop'
alias p='ping'
alias s='sudo'
alias v='vim'
alias c='clear'

#Auto completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Colored pages in man
        export LESS_TERMCAP_mb=$'\E[01;34m'    # debut de blink !
        export LESS_TERMCAP_md=$'\E[01;34m'    # debut de gras
        export LESS_TERMCAP_me=$'\E[0m'        # fin
        export LESS_TERMCAP_se=$'\E[0m'        # fin
        export LESS_TERMCAP_so=$'\E[01;44;33m' # début de la ligne d'état
        export LESS_TERMCAP_ue=$'\E[0m'        # fin
        export LESS_TERMCAP_us=$'\E[01;32m'    # début de souligné

#Env variables
export LANG=en_US.UTF8
export LC_CTYPE="en_US.UTF8"
export LC_NUMERIC="en_US.UTF8"
export LC_TIME="en_US.UTF8"
export LC_COLLATE="en_US.UTF8"
export LC_MONETARY="en_US.UTF8"
export LC_MESSAGES="en_US.UTF8"
export LC_PAPER="en_US.UTF8"
export LC_NAME="en_US.UTF8"
export LC_ADDRESS="en_US.UTF8"
export LC_TELEPHONE="en_US.UTF8"
export LC_MEASUREMENT="en_US.UTF8"
export LC_IDENTIFICATION="en_US.UTF8"

#passer la ligne de commande en mode vi
set -o vi

export EDITOR=/usr/bin/vim
