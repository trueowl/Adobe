#!/usr/bin/env bash

# Script to ease syncronization of settings in Adobe Photoshop, on macOS
# Designed with different users on one system in mind: either to install 
# You need to run the script just once per each user, per one installation of Photoshop
# In case of reinstalling, you have to repeat the script


# Variables

path_to_configs=/Users/Shared/Configs/Adobe/PS/Settings/

## Paths for Photoshop 
path_to_settings=${HOME}/Library/Preferences/Adobe\ Photoshop\ 2020\ Settings/
path_to_presets=${HOME}/Library/Application\ Support/Adobe/Adobe\ Photoshop\ 2020/Presets/

# Moving

## Interactive to add: 
## if: Synced Settings are present
## then do backup of originals, instead of copying them
path_to_configs_backup="$path_to_configs"
path_to_configs="$path_to_configs"/Originals-CC-2020
mkdir "$path_to_configs"
## else: if there's no Synced Settings, then skip this step

mv "$path_to_settings"/WorkSpaces "$path_to_configs"
mv "$path_to_settings"/WorkSpaces\ \(Modified\) "$path_to_configs"
mv "$path_to_settings"/Keyboard\ Shortcuts.psp "$path_to_configs"
mv "$path_to_settings"/Keyboard\ Shortcuts\ Primary.psp "$path_to_configs"
mv "$path_to_settings"/Actions\ Palette.psp "$path_to_configs"
mv "$path_to_settings"/Patterns.psp "$path_to_configs"

# Testing this:
# mv "$path_to_settings"/MachinePrefs.psp "$path_to_configs"
# mv "$path_to_settings"/Workspace\ Prefs.psp "$path_to_configs"
# mv "$path_to_settings"/Adobe\ Photoshop\ 2020\ Prefs.psp "$path_to_configs"

mv "$path_to_presets" "$path_to_configs"/..

## and then restore path_to_configs to its original form, before Symlinking step
path_to_configs="$path_to_configs_backup"

# Symlinking 

ln -s "$path_to_configs"/WorkSpaces "$path_to_settings"
ln -s "$path_to_configs"/WorkSpaces\ \(Modified\) "$path_to_settings"
ln -s "$path_to_configs"/Keyboard\ Shortcuts.psp "$path_to_settings"
ln -s "$path_to_configs"/Keyboard\ Shortcuts\ Primary.psp "$path_to_settings"
ln -s "$path_to_configs"/Actions\ Palette.psp "$path_to_settings"
ln -s "$path_to_configs"/Patterns.psp "$path_to_settings"
ln -s "$path_to_configs" "$path_to_presets"/..
