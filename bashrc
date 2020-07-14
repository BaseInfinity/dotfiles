# .bashrc

export TERM="xterm-256color"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# Set vi mode for bash
set -o vi

cd Code

# User specific aliases and functions
alias gr="git log --stat master.."
alias hotmerge="git push && git checkout master && git push"
alias cronimor="sudo -u ifixit crontab -e"
alias plock="sudo rm /tmp/parallel.lock"
alias live_apps='shux-machines app'
alias sudo="sudo -E"
alias listmachines="AWS_REGION=us-west-1 /home/sayala/server-templates/utils/list-machines"
alias listmachineseast="/home/sayala/server-templates/utils/list-machines"
alias connect="bash /home/sayala/connect.sh"
alias exceptions="gg -P php \"new \w+Exception\" | perl -wnle '/new (\w+Exception)/ and print $1' | sort | uniq -c | sort -rn"
#$alias try_me='deploy lb && servers.php build-assets remotely && deploy all'

alias startsession="cd /home/sayala/Code/Exec/GuidePublisher && npm install && tmux"
alias guidepublisher="./guidepublisher"
alias dozuki="ISSUE_REPO='iFixit/dozuki' ~/git-scripts/bin/feature"

killd () {
   for session in $(screen -ls | grep -o '[0-9]\+')
   do
      screen -S "${session}" -X quit;
   done
}

eval `dircolors ~/.dircolors.ansi-dark`
# echo "There are currently"   `grep "FAILED" /etc/motd | wc -l` "failing tests that I haven't fixed yet." | wall


export PS1="${GRE}\u ${CYA}\t${YEL}\$(__git_ps1 \" (%s)\") ${BLU}\h ${PUR}\w${NUL} \`$EXIT\`\n▶  "

export PS1="\[\033[44m\]\[\033[1;37m\] DEV \[\033[m\] $PS1"
