# Setup Linux

This repo contains my personal setup scripts for my Ubuntu desktop partitian. This is not a complete setup, but it gets me part way there. 

Feel free to modify and use at your own risk. 

## Overview

```
.
├── packages/
│   ├── some-package.deb
│   └── some-other-package.deb 
├── packages_local.txt
├── packages.txt
├── snaps.txt
├── README.md
└── setup.sh
```

## Usage

1. Download this repo, unzip and `cd` into it. 
2. Check and modify `packages.txt` and `packages_local.txt` as needed. These lines contain a list of commmands and their package names (if package name differs from command) - separated by a `;` character. 
Note, Multiple package names are separated again, by a `,` character.
3. Run `sudo bash ./setup.sh` and answer the `y/n` prompts as they appear. 

## Packages

### apt

- `curl` - URL getter
- `flatpak` - alternative package manager that works across different distributions 
- `xclip` - allows copy/paste in the `micro` editor
- `zsh` - alternative terminal shell
- `postgresql` - for databases

### Local packages

- `ulauncher` - Alfred alternative
- `espanso` - Open source, cross-platform snippets/macro app
- `rustdesk` - [https://rustdesk.com/](RustDesk) is an open source, cross-platform AnyDesk/TeamViewer alternative. 

### Flatpaks

- `codium` - Open-source, "un-microsoft'd" VS Code.
- `Discord` - The chat app
- `Obsidian` - Notes
- `bottles` - Modern WINE bottler app
- `OBS` - OBS Studio, for streaming/capturing
- `Thunderbird` - Email client
- `Steam` - Ya know, steam.
- `Handbreak` - 
- `Primehack` - modded Dolphin emulator
- `micro` - text editor for terminal
- `Lutris` - Multi-system game organiser
- `RPCS3` - PS3 Emulator
- `BreakTimer` - Just constantly interrupts me and tells me to take a break
- `RetroArch` - Multi-system emulator
- `yuzu` - Nintendo Switch emulator
- `PlexDesktop` - Multimedia client app
- `Plexamp` - Multimedia client app
- `VLC` - Multimedia app
- `Reaper` - Audio software
- `Cemu` - Wii U Emulator
- `xemu` - Xbox Emulator
- `RMG` - N64 Emulator (Rosalie's Mupen GUI)
- @TODO: more notes here

### Snaps

I've tried to avoid using Snap as much as I can.

- `icloud-for-linux` - These are just web-wrappers around some common iCloud tools like calendar and reminders.

## Code Extensions

- I've included Github Copilot as a `.visx` file, since you can't install GHCP the regular way with Codium.
- Shout-out to @ustas-eth for the [https://github.com/VSCodium/vscodium/discussions/1487](\[GUIDE\] to running Copilot in VSCodium)

## Credits

- File tree generated with https://tree.nathanfriend.io/
