# Adobe

Scripts to interact with Adobe Products.
At this point it’s settings management and backup only.

Software supported:

- Animate (ex-Flash)
- Illustrator
- [Photoshop](/Photoshop) has a script to backup and symlink original Settings and Presets into a different location.

## macOS only

We don’t use Windows, so only macOS is supported. If someone would like to add Windows support, you’re welcome! The process should be very similar: the differences would be Windows settings locations and PowerShell instead of bash (maybe you can use bash from WSL), anyone more competent on this is welcomed.


# Usage

All the instructions are inside their respective directories.

As of now the script is a subject of manual intervention for every user, at this point you have to change at least your Configs directory. In this case it’s in the root directory, for multi-user support. Can be any directory of your choice (e.g. your favourite cloud provider). We use [Syncthing](https://github.com/syncthing/syncthing) for syncing.


# Roadmap

## Transfer everything into one place

Will take some time to gather all the producs, since different people use different products and it’s quite a mess we would like to make more organized, both for our team and for the everyone else.


## Add interactive questionnarie: 

- what to backup and symlink and what not to
- configs directory location
- whether a user have their configs already, or they want to move them first
