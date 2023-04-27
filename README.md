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
├── README.md
└── setup.sh
```

## Usage

1. Download this repo, unzip and `cd` into it. 
2. Check and modify `packages.txt` and `packages_local.txt` as needed. These lines contain a list of commmands and their package names (if package name differs from command) - separated by a `;` character. 
Note, Multiple package names are separated again, by a `,` character.
3. Run `sudo bash ./setup.sh` and answer the `y/n` prompts as they appear. 


## Credits

- File tree generated with https://tree.nathanfriend.io/
