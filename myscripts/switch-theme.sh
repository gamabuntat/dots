#!/bin/bash

bg=background
fg=foreground

b=$(sed --silent "/^[^!]*$bg/=" ~/.Xresources)
f=$(sed --silent "/^[^!]*$fg/=" ~/.Xresources)
sed -i "$b s/$bg/$fg/" ~/.Xresources
sed -i "$f s/$fg/$bg/" ~/.Xresources

xrdb ~/.Xresources
