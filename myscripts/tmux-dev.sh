#!/bin/bash

tmux new-session -s fsd \; \
    neww -n dev \; \
    send-keys 'cd ~/fsd-step-2/src/ && nvim' C-m \; \
    split-window -h \; \
    send-keys 'cd ~/fsd-step-2/src/ && nvim' C-m \; \
    split-window -v \; \
    send-keys 'cd ~/fsd-step-2/src/' C-m \; \
