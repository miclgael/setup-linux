# 🧋 Setup Linux

Opinionated notes and scripts for setting up a fresh Pop!\_OS computer for web development, gaming, and general hobbying _(Follow at your own risk / benefit)_

> 💡 I also have guides for [macOS](https://github.com/miclgael/setup) and [Windows](https://github.com/miclgael/setup-win)!

**NB: Tested on POP_OS 22.04 (Jammy)**

## Usage

1. Download this repo, unzip and `cd` into it. 
2. Check and modify `packages/apt.txt`, `packages/brew.txt` and `packages/flatpak.txt` as you desire. Each line consists of a command and its package names (if package name differs from command) - separated by a `;` character. 
Note, Multiple package names are separated again, by a `,` character.
3. Run `sudo bash ./setup.sh` and answer the `y/n` prompts as they appear. 

## Packages 

TODO: Need to update these lists as they're now out of date.

### apt

- `curl` - URL getter
- `flatpak` - alternative package manager that works across different distributions 
- `xclip` - allows copy/paste in the `micro` editor
- `zsh` - alternative terminal shell
- `postgresql` - for databases

### Flatpaks

- `codium` - Open-source, "un-microsoft'd" VS Code.
- `Discord` - The chat app
- `Obsidian` - Notes
- `bottles` - Modern WINE bottler app
- `OBS` - OBS Studio, for streaming/capturing
- `Thunderbird` - Email client
- `Handbreak` - 
- `Primehack` - modded Dolphin emulator
- `micro` - text editor for terminal
- `Lutris` - Multi-system game organiser
- `RPCS3` - PS3 Emulator
- `BreakTimer` - Just constantly interrupts me and tells me to take a break
- `RetroArch` - Multi-system emulator
- `PlexDesktop` - Multimedia client app
- `Plexamp` - Multimedia client app
- `VLC` - Multimedia app
- `Reaper` - Audio software
- `Cemu` - Wii U Emulator
- `xemu` - Xbox Emulator
- `RMG` - N64 Emulator (Rosalie's Mupen GUI)
- TODO: more notes here

### Clean-up

- `Steam` - Advise installing straight from the `.deb` on the [Steam website](https://store.steampowered.com/about/download). Especially if you want to use controllers. 

## Code Extensions

- I've included Github Copilot as a `.visx` file, since you can't install GHCP the regular way with Codium.
- Shout-out to @ustas-eth for the [https://github.com/VSCodium/vscodium/discussions/1487](\[GUIDE\] to running Copilot in VSCodium)
- https://github.com/VSCodium/vscodium/discussions/1487#discussioncomment-5833624
- Other extensions relate to me and my work, so ignore if not needed.
