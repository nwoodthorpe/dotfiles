#!/bin/bash

#export NO_AT_BRIDGE=1

# BSPWM Session
export BSPWM_TREE=/tmp/bspwm_tree.$USER
export BSPWM_HISTORY=/tmp/bspwm_history.$USER
export BSPWM_STACK=/tmp/bspwm_stack.$USER

exec bspwm
#exec cinnamon-session
#exec cinnamon-session-cinnamon2d
