#!/bin/bash

session="Alien"

tmux new-session -d -s $session

window=0
tmux new-window -t $session:$window -n 'VIM'

window=1
tmux new-window -t $session:$window -n 'TERM'

window=2
tmux new-window -t $session:$window -n 'NOTES'

window=3
tmux new-window -t $session:$window -n 'MUSIC'

tmux attach-session -t $session
