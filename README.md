# kde-sync

A simple Bash utility to back up and restore KDE Plasma themes, color schemes, icons, and user-level KWin-related files between machines.

## What it does

This script helps you copy your KDE appearance and configuration from one Linux PC to another. It can back up things such as:

- KDE Plasma config files
- color schemes and themes
- icons and look-and-feel settings
- KWin settings and KWin-related user files
- widgets and shortcuts

## Features

- Backs up only the KDE parts you choose
- Works with a custom source or target home directory
- Can be installed locally with the included installer

## Install on this PC

```bash
cd ~/Documents/kde-sync
chmod +x kde-sync install.sh
./install.sh
```

The installer places the script in `~/.local/bin`, which is usually already on your PATH.

## Basic usage

### Create a backup

```bash
kde-sync backup ~/Downloads/kde-backup.tar.gz
```

### Backup only specific components

```bash
kde-sync backup --component kwin --component themes ~/Downloads/kde-backup.tar.gz
```

### Restore a backup on another PC

```bash
kde-sync restore ~/Downloads/kde-backup.tar.gz
```

### See available component names

```bash
kde-sync --list-components
```

## Available components

- `plasma`
- `themes`
- `kwin`
- `widgets`
- `shortcuts`
- `lockscreen`
- `icons`

## Notes

If a theme or extension came from a package manager, Flatpak, or AUR, it may still need to be installed on the target machine. This script copies your user-level KDE settings and files, not the underlying system package.
