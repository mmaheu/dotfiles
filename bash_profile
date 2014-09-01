export GRAILS_HOME=/Users/mmaheu/Development/Frameworks/grails-2.4.0
export TODO_DIR=/Users/mmaheu/Dropbox/todo
export PATH="$PATH:$GRAILS_HOME/bin"
#export PATH="/opt/chef/embedded/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export M2_HOME=/usr/share/atlassian-plugin-sdk-4.2.10/apache-maven/
export EDITOR=/usr/bin/vim
export STASH_HOME=/Users/mmaheu/Servers/stash-home

source /usr/local/Cellar/todo-txt/2.10/etc/bash_completion.d/todo_completion comple    te -F _todo t
alias t='/usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d $HOME/Dropbox/todo/todo.cfg    '

export TERM=xterm-256color

function title ()
 {
    TITLE=$*;
    export PROMPT_COMMAND='echo -ne "\033]0;$TITLE\007"'
 }

export PATH=/usr/local/bin:$PATH
