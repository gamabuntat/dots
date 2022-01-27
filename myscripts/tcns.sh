#!/bin/sh

tmux new-session -c `pwd` -s ${PWD##*/}

