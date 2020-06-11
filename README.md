# setup-linux

Notes and scripts for setting up a new GNU/Linux (Ubuntu 20.x) development environment _(Follow at your own risk / benefit)_

> 💡 I also have guides for [macOS](https://github.com/miclgael/setup) and [Windows 10](https://github.com/miclgael/setup-win)!

## 📦️ Working out of the box

No need to go searching for any of this crap, it will work on a fresh Ubuntu install.

- ✅️ **Package management:** `apt` and `snap`. apt is good for command-line tools, where snap is kind of like brew casks, if you're familiar with homebrew on macOS.
- ✅️ **Git!** Mmm, sweet delicious nourishing version control.
- ✅️ **Python 3!** Slitherin'

## 🐕️ Fetching other stuff:

### Install Git Large File Storage

I like to immediately install this, otherwise I forget and then things go haywire later when I pull down a repo that needs lfs.

```bash
sudo apt install git-lfs
```

### 💤 Install [Z-Shell and Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

- Zsh is an alternative terminal shell. OMZsh comes with lots of [themes](https://github.com/ohmyzsh/ohmyzsh#themes).
- **Zsh should be installed first**, see [installing zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

##### 1. Install Zsh

```bash
sudo apt install zsh
```

##### 2. Change default shell to zshell

```bash
chsh -s $(which zsh)
```

Press **(2)** at the menu, to populate the `~/.zshrc` with defaults

##### 3. Install Oh My Zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

##### X. If you need Curl...

`sudo apt-get install curl`

### 💻️ Install Development tools!

**💚 Install [Node Version Manager](https://github.com/nvm-sh/nvm)**

Installs NVM (switch between multiple versions of Node.JS on the same system)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
```

Installs Node.JS <version> and relative NPM version.

```bash
nvm install node # "node" is an alias for the latest version
```

**🐳️ Install [Docker](https://docs.docker.com/engine/install/ubuntu/)**

<details>
<summary>These steps are kind of long</summary>
	
Remove old versions

```bash
sudo apt-get remove docker docker-engine docker.io containerd runc 
```

Setup the apt repository

```bash
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
```

Add GPG key

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

Verify key

```bash
sudo apt-key fingerprint 0EBFCD88
```

Add respository

```bash
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

Install latest versions

```bash
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

Verify docker runs without error

```bash
docker ps

## If error, try:
sudo usermod -a -G docker $USER
```

(end Docker stuff)

</details>

**Micro editor (nicer than Nano, less hectic than vim)**

```bash
snap install micro --classic
```

**Allow copy/paste in micro**

```bash
sudo apt install xclip
```

### Install PostgreSQL

I like to [follow this guide](https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart) to remember how to get set-up, but if you just want the install command, here it is:

```bash
sudo apt install postgresql postgresql-contrib
```

### Install VS Code / VS Codium

```bash
snap install codium --classic
```

### 💻 Install preferred VS Code extensions

Install the [Settings Sync extension](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync), then connect it to the appropriate [Github Gist](https://gist.github.com/miclgael/79b65d3420f95a943eb9bf94be1399c5).

(I'm opting for this extension over the new built-in sync settings for privacy reasons)

### Install global node packages

#### Install Netlify CLI

```bash
npm install netlify-cli -g

netlify login
```


#### Set up [Netlify Large Media](https://docs.netlify.com/large-media/setup/)

_(requires [Git LFS](#install-git-large-file-storage))_

```bash
cd project-name

netlify link

netlify lm:setup
```

#### Install Heroku CLI

```bash
###TODO

heroku autocomplete --refresh-cache
heroku autocomplete
```

Verify with `heroku --version`.

Login with `heroku login` (press any key to open a browser window for authentication)

#### Install Google Cloud SDK

```bash
#TODO
``` (untested)

Will require auth through Google. Must already have an account.

## 🧼 Clean-up

```bash
#TODO
```
