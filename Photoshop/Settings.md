- [Presets](Presets.md)

---

# Settings

`'~/Library/Preferences/Adobe Photoshop 2020 Settings/'`

Those settings are fucking mess, and I’m very sure [there’s very little logic behind it](Settings_Rant.md). That’s why it’s even more important to understand what data do we need to get from this pile of garbage.


## Contents

- Actions Palette.psp — no idea
- [Adobe Photoshop 2020 Prefs.psp](### Adobe Photoshop CC 2019 Prefs.psp)
- Brushes.psp — no idea
- LaunchEndFlag.psp — no idea
- [MachinePrefs.psp](### MachinePrefs.psp)
- PluginCache.psp — no idea
- UIPrefs.psp — no idea
- [WorkSpaces](### WorkSpaces)
- [WorkSpaces (Modified)](### WorkSpaces (Modified)) 
- Workspace Prefs.psp — no idea
- dnsa.json — no idea
- sniffer-out.txt — no idea
- web-cache-temp — no idea


### Adobe Photoshop 2020 Prefs.psp

Affects some settings, which ones is unclear.

- Layers Panel Options

Maybe something else.

**Warning**: The name changes with new versions: `Adobe Photoshop CC 2019 Prefs.psp` is the name for CC 2019, maybe it’s better to keep it not synced, because backing it may affect the future settings, maybe there is a reason behind this mess in Photoshop’s settings.


### MachinePrefs.psp

Settings about the machine perferences, useful to backup if you use machine with different users. No need to backup if you want to sync across different machines. 

**Syncronizes**

- Scratch Disks Settings (Cmd+K)
- Recent Files panel
- Enhanced Controls
- Technology Previews

**Does not affect**

- General 
- Interface 
- Workspace 
- Tools
- History Log
- File Handling
- Export
- Performance
- Cursors
- Transparency & Gamut
- Units & Rulers
- Guides, Grid & Slices
- Plug-Ins
- Type
- 3D


### WorkSpaces

Looks like that’s for Workspaces.

### WorkSpaces (Modified) 

Is for Workspaces (have no idea what Modified stands for here) and what is the difference between this directory and WorkSpaces.

---

## Conflicting Files

For me these files were a subject of conflicts when syncronized. I have no idea why.

- Multiple sniffer-out.txt
- Adobe Photoshop CC 2019 Prefs.psp
- MachinePrefs.psp
- MRU New Doc Sizes.json
- LaunchEndFlag.psp
- UIPrefs.psp
- Workspace Prefs.psp
- PluginCache.psp

---

## Triggers on Launch

- sniffer-out.txt
- LaunchEndFlag.psp
- web-cache-temp

---

## Triggers on Quit

- Adobe Photoshop 2020 Prefs.psp
- New Doc Sizes.json
- MRU New Doc Sizes.json
- QuitEndFlag.psp

