#!/usr/bin/env bash

# Script to redirect rubbish Adobe Photoshop generates in ~/Documents, on macOS

# You need to run the script just once per each macOS installation
# In case of reinstalling macOS, you have to repeat the script


# Variables
new_path_to_rubbish=/Volumes/TMP-320/Users/walter

# Moving
# We expect that you haven‘t run Photoshop yet, hence your ~/Documents/Adobe directory is empty.
# In case you have ~/Documents/Adobe directory, you need to move it first, then edit new_path_to_rubbish variable.


## -------- if rubbish is present -------- ##
## then move the original

## mkdir "$new_path_to_rubbish"/Rubbish/
## mv ${HOME}/Documents/Adobe "$new_path_to_rubbish"/Rubbish/

## --------------------------------------- ##


## --- else: if there's no rubbish yet --- ##

mkdir -p "$new_path_to_rubbish"/Rubbish/Adobe

## --------------------------------------- ##


# Symlinking 
ln -s "$new_path_to_rubbish"/Rubbish/Adobe ${HOME}/Documents/
chflags -h hidden ${HOME}/Documents/Adobe
