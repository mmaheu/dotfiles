#!/bin/bash

# Start in my home directory
cd ~/

# Works with tmux 2.6 on Ubuntu 18.04. Your mileage may vary.
# 'send-keys' exists only to show/prove what's going where: the space prevents command history retention
#   and the hashtag indicates a comment so bash doesn't try to run it.

session="alien"

# Removed: seems unnecessary.
# tmux start-server

# Create new session, and extra windows.
tmux new-session -d -s $session -n VIM

# A second whole window!
tmux new-window -t $session:2 -n TERM
tmux split-window -h -p 50
tmux select-pane -t 1

# A THIRD whole window!
tmux new-window -t $session:3 -n NOTES

# A FORTH whole window!
tmux new-window -t $session:4 -n MUSIC

# Select the second window, then the first window (so that the second window is the 'next' one).
tmux select-window -t $session:2
tmux select-window -t $session:1

# Make it so. This must be the very last command.
tmux attach-session -t $session
