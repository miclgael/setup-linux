# setup-linux

Notes and scripts for setting up a new Linux/GNU (Ubuntu 20.x) development environment _(Follow at your own risk / benefit)_

## 📦️ Working out of the box

No need to go searching for any of this crap, it will work on a fresh Ubuntu install.

- ✅️ Package management: `apt` and `snap`. apt is good for command-line tools, where snap is kind of like brew casks, if you're familiar with homebrew on macOS.
- ✅️ Git! Mmm, sweet delicious nourishing version control.
- ✅️ Python 3! Slitherin'

## 🐕️ Fetching other stuff:

### Install Git Large File Storage

I like to immediately install this, otherwise I forget and then things go haywire later when I pull down a repo that needs lfs.

```bash
sudo apt install git-lfs
```

### 💤 Install [Z-Shell and Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

- Zsh is an alternative terminal shell. OMZsh comes with lots of [themes](https://github.com/ohmyzsh/ohmyzsh#themes).
- **Zsh should be installed first**, see [installing zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH), or `sudo apt install zsh`

##### Install Oh My Zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 💻️ Install Development tools!

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

</details>



**Micro editor (nicer than Nano, less hectic than vim)**

```bash
snap install micro --classic
```

### 💻 Install preferred VS Code extensions

Install the [Settings Sync extension](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync), then connect it to the appropriate [Github Gist](https://gist.github.com/miclgael/79b65d3420f95a943eb9bf94be1399c5).

(I'm opting for this extension over the new built-in sync settings for privacy reasons)

### 🎨 Install design apps

```bash
brew cask install sketch nucleo imageoptim
```

### Install Google fonts

w/Thanks to qrpike's [Web Font Load](https://github.com/qrpike/Web-Font-Load)

```bash
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | bash
```

### 🛡 Install other misc. software

```bash
brew cask install dashlane authy spotify alfred slack notion carbon-copy-cloner
```

### 🎹 Install music apps (optional)

```bash
brew cask install ableton-live-suite loopback
```

**Manual step:**

[Install Komplete Audio 6 Drivers](https://www.native-instruments.com/en/support/downloads/drivers-other-files/) <sup>\*</sup>

<sup>\*</sup>[This driver is not necessary with Catalina 10.15.2 and will error](https://support.native-instruments.com/hc/en-us/community/posts/360008523278/comments/360001197857). Leaving here for convenience / reminder.

### 📼 Install multimedia apps (optional)

```bash
brew cask install kap handbrake

## ffmpeg CLI tool
brew install ffmpeg --force &&
brew link ffmpeg
```

### 💚 Install [Node Version Manager](https://github.com/nvm-sh/nvm)

Installs NVM (switch between multiple versions of Node.JS on the same system)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
```

Installs Node.JS <version> and relative NPM version.

```bash
nvm install node # "node" is an alias for the latest version
```

### Install global node packages

#### Install Netlify CLI

```bash
npm install netlify-cli -g

netlify login
```

### ✏️ Install Hugo for blogging

```bash
brew install hugo
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
brew tap heroku/brew && brew install heroku

heroku autocomplete --refresh-cache

heroku autocomplete
```

Verify with `heroku --version`.

Login with `heroku login` (press any key to open a browser window for authentication)

#### Install Google Cloud SDK

`brew cask install google-cloud-sdk` (untested)

Will require auth through Google. Must already have an account.

## 🧼 Clean-up

- Get [Custom iTerm Applescripts for Alfred](https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred)
- Install some optional utils `brew cask install vanilla rocket`
- Grab [ShareMouse](https://www.sharemouse.com/new/) to share between Laptop and Desktop setups
- Grab [OBS Camera](https://obs.camera/docs/getting-started/ios-camera-plugin-usb/) for web-camming
- Grab [DaVinci Resolve 16](https://www.blackmagicdesign.com/products/davinciresolve/) for video editing

**Add [spaces to the dock](https://css-tricks.com/snippets/html/add-spaces-to-dock-in-os-x/):**

```bash
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

killall Dock
```

**Visit the App Store for**

- [Amphetamine](https://apps.apple.com/au/app/amphetamine/id937984704?mt=12)
- [Bandwidth+](https://apps.apple.com/au/app/bandwidth/id490461369?mt=12)
- [BetterSnapTool](https://apps.apple.com/au/app/bettersnaptool/id417375580?mt=12)
- [Horo](https://apps.apple.com/au/app/horo-timer-for-menu-bar/id1437226581?mt=12)
- [Lightweight PDF](https://apps.apple.com/au/app/lightweight-pdf/id1450640351?mt=12)
- [OneNote](https://apps.apple.com/au/app/microsoft-onenote/id784801555?mt=12)
- [The Unarchiver](https://apps.apple.com/au/app/the-unarchiver/id425424353?mt=12)
- [Xcode](https://apps.apple.com/au/app/xcode/id497799835?mt=12)
