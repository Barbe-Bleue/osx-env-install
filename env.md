# 🍏 MacOSX Install 🖥

## homebrew 🍺
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### cask version 
	brew tap homebrew/cask-versions

### mas
	brew tap mas-cli/tap
	brew tap-pin mas-cli/tap
	
### package 📦

#### basic
	brew install cask htop curl ncdu wget bash-completion screenfetch imagesnap ffmpeg youtube-dl exa mas 
	
#### web dev 🕸
	brew install yarn composer git gpg npm iterm2 hyper upterm
	
#### fun 🙀
	brew install cmatrix cowsay fortune asciiquarium toilet lolcat sl mps-youtube

### cask apps 🖥

#### basics
	brew cask install appcleaner macdown copyq iina spectacle
	
#### web dev 🕸
	brew cask install atom visual-studio-code sequel-pro mongodb-compass-community postman coteditor
 	
#### other 
	brew cask install min slack

## atom packages ⚛️
	apm install atom-clock platformio-ide-terminal atom-beautify file-icons pigments color-picker atom-symfony2 highlight-selected language-generic-config php-twig atom-typescript react autoclose-html
	
	apm install dracula-theme

## vscode packages 💎
	code --install-extension bmewburn.vscode-intelephense-client; code --install-extension dracula-theme.theme-dracula; code --install-extension christian-kohler.path-intellisense; code --install-extension naumovs.color-highlight; code --install-extension PKief.material-icon-theme
	
## config mac 🖥

### Activer tab sur les prompts de mac
	
	ctrl + fn7
	
### Dossier sites d'osx

	mkdir ~/Sites
	
## git 🚀

### config user
	git config --global user.name "foo-bar"
	git config --global user.email foo@bar.com

	#[user]
	#name = foo-bar
	#email = foo@bar.com
	#signingkey = 3AA5C34371567BD2
	
### [config colors & alias](https://github.com/barbe-bleue/osx-env-install/blob/master/config/git_alias.txt)
		
## clé ssh 🔑
	ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
	Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
	Enter passphrase (empty for no passphrase): [Type a passphrase]
	Enter same passphrase again: [Type passphrase again]
	
## clé GPG 🗝

### génération de clé
	gpg --full-generate-key
	RSA
	0
	y
	4096

### récupération de la clé
	gpg --list-secret-keys --keyid-format LONG
	
From the list of GPG keys, copy the GPG key ID you'd like to use. In this example, the GPG key ID is **3AA5C34371567BD2**:

	/Users/hubot/.gnupg/secring.gpg
	------------------------------------
	sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
	uid                          Hubot 
	ssb   4096R/42B317FD4BA89E7A 2016-03-10
Paste the text below, substituting in the GPG key ID you'd like to use. In this example, the GPG key ID is **3AA5C34371567BD2**:

	gpg --armor --export 3AA5C34371567BD2
	
Copy your GPG key, beginning with -----BEGIN PGP PUBLIC KEY BLOCK----- and ending with -----END PGP PUBLIC KEY BLOCK-----

### clé gpg sur git
Ajouter sa clé **3AA5C34371567BD2** à git

	git config --global user.signingkey 3AA5C34371567BD2
	git config --global commit.gpgsign true
	git config --global gpg.program gpg
	
## yarn 🐱
	
### Créer une applicaiton react

	yarn global add create-react-app
> create-react-app my-app
	
### Killer une application via une rechercher

	yarn global add fkill-cli
> fkill
	
### Remplacer le man
	yarn global add tldr
	
> tldr git
	
### Cours de crypto dans la terminal 💰

	yarn global add coinmon
Lister le top 10
> coinmon

Chercher une crypto
> coinmon -f xmr

### Command Top avec effet visuel

	yarn global add vtop
> vtop
	
### Transformer un site web en application

	yarn global add nativefier
> nativefier "http://medium.com"

### Télécharger ou streamer video youtube ▶️
	yarn global add ytdl
Regarder la video
> ytdl "http://www.youtube.com/watch?v=_HSylqgVYQI" | mpv -

Télécharger en mp4
> ytdl "http://www.youtube.com/watch?v=_HSylqgVYQI" > myvideo.mp4

ou
> ytdl -o "{author.name} - {title}" "http://www.youtube.com/watch?v=_HSylqgVYQI"

Télécharger au format mp3 (besoin de ffmpeg)
> ytdl http://www.youtube.com/watch?v=_HSylqgVYQI | ffmpeg -i pipe:0 -b:a 128K -vn myfile.mp3


	
### Ouvrir une video en picture-in-picture
	yarn global add open-pip
> open-pip privacy.mp4 (ne marche pas avec les .avi et .mkv)

Avec ytdl
> ytdl --print-url --filter-container=mp4 https://www.youtube.com/watch?v=6HLPnq2lrgQ | open-pip

### Meteo dans le terminal 🌤
	yarn global add weather-cli
> weather -c paris -C france


### Jeux 🎮
	yarn global add battleship-game mastermind-game 
	
## php72 & apache 🐘🦅

### uninstall 
	brew remove --force --ignore-dependencies httpd; brew remove --force --ignore-dependencies php70-xdebug php71-xdebug; brew remove --force --ignore-dependencies php70-imagick php71-imagick; brew remove --ignore-dependencies --force php70 php71 php72

### install
	brew install httpd php72

### start service
	brew services start httpd
	
### extension
	brew install php72-cs-fixer

## mysql 🐬

### install
	brew install mysql

### start service
	brew services start mysql

### changer mot de passe
	mysql -u root -p
	ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'myNewPass11!';

## mongodb 🍃

### install
	brew install mongodb

### start service
	brew services start mongodb

### database
	sudo mkdir -p /data/db
	sudo chown -R `id -un` /data/db

## BASH 📺
### Themes pour le terminal

[macos-terminal-themes](https://github.com/lysyi3m/macos-terminal-themes)
	
- galaxy
- highway
- parasio dark
- seaShells
- source code x
- spacegray
- spacedust

[dracula-theme](https://github.com/dracula/terminal-app.git)
	
### alias 💡

#### [bash_profile](https://raw.githubusercontent.com/barbe-bleue/osx-env-install/master/config/bash_profile.txt)

#### inputrc

	set completion-ignore-case on
	set show-all-if-ambiguous on
	set show-all-if-unmodified on
	"e[A": history-search-backward
	"e[B": history-search-forward

### Étoile mot de passe 🌟
	
	sudo visudo

Localisez ensuite la ligne
	
	Defaults                  env_reset

Et ajoutez-lui le paramètre pwfeedback comme ceci :

	Defaults                  env_reset,pwfeedback
	
redemarrer le terminal

### Touch Id sudo 🔐

	sudo nano /etc/pam.d/sudo

Ajouter ce code à la ligne 2
	
	auth sufficient pam_tid.so
	

### PS1 [tuto](https://medium.freecodecamp.org/jazz-up-your-bash-terminal-a-step-by-step-guide-with-pictures-80267554cb22)

#### install pip
	sudo easy_install pip
	
#### install powerline
	pip install --user powerline-status
	
#### Add the Powerline daemon to bash
	pip show powerline-status
copy the value from **Location** field

copier ca dans le bash_profile **(attention au path user !)**
	
	# pour le PS1
	if [ -f `which powerline-daemon` ]; then
		export PATH=$PATH:$HOME/Library/Python/2.7/bin
		powerline-daemon -q
		POWERLINE_BASH_CONTINUATION=1
		POWERLINE_BASH_SELECT=1
	  . /Users/$USER/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
	fi

	
restart le terminal

#### Install Powerline fonts

- go to [https://github.com/powerline/fonts](https://github.com/powerline/fonts)
- ouvrir le dossier **Meslo dotted**
- installer les .ttf
- Open Terminal > Preferences > Text
- Selectionner le theme voulu
- Click on the “Font” button — This opens up “Fonts” dialog
- In the “Fonts” dialog, select “Meslo LG L DZ for Powerline” in the Family and also select font size 14 (so it’s easier to read).

#### Adding Git information to the prompt

##### Install powerline-gitstatus
	
	pip install --user powerline-gitstatus
	
##### Add powerline-gitstatus color schemes to Powerline
	
	atom /Users/$USER/Library/Python/2.7/lib/python/site-packages/powerline/config_files/colorschemes/shell/default.json
	
Ajouter ca à la suite de "attached_client" (ne pas oublier la virgule)

	,
	"gitstatus":                 { "fg": "gray8",           "bg": "gray2", "attrs": [] },
	"gitstatus_branch":          { "fg": "gray8",           "bg": "gray2", "attrs": [] },
	"gitstatus_branch_clean":    { "fg": "green",           "bg": "gray2", "attrs": [] },
	"gitstatus_branch_dirty":    { "fg": "gray8",           "bg": "gray2", "attrs": [] },
	"gitstatus_branch_detached": { "fg": "mediumpurple",    "bg": "gray2", "attrs": [] },
	"gitstatus_tag":             { "fg": "darkcyan",        "bg": "gray2", "attrs": [] },
	"gitstatus_behind":          { "fg": "gray10",          "bg": "gray2", "attrs": [] },
	"gitstatus_ahead":           { "fg": "gray10",          "bg": "gray2", "attrs": [] },
	"gitstatus_staged":          { "fg": "green",           "bg": "gray2", "attrs": [] },
	"gitstatus_unmerged":        { "fg": "brightred",       "bg": "gray2", "attrs": [] },
	"gitstatus_changed":         { "fg": "mediumorange",    "bg": "gray2", "attrs": [] },
	"gitstatus_untracked":       { "fg": "brightestorange", "bg": "gray2", "attrs": [] },
	"gitstatus_stashed":         { "fg": "darkblue",        "bg": "gray2", "attrs": [] },
	"gitstatus:divider":         { "fg": "gray8",           "bg": "gray2", "attrs": [] }
  	
##### Activate The Theme

	atom /Users/$USER/Library/Python/2.7/lib/python/site-packages/powerline/config_files/themes/shell/default.json
	
ajouter ca dans le segment "left" (ne pas oublier la virgule)

	{
		"function": "powerline_gitstatus.gitstatus",
		"priority": 40
	}
	
##### Restart the Daemon
	powerline-daemon --replace
	
##### Restart The Terminal

## [Oh My Zh & Zsh](https://medium.freecodecamp.org/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156)

## Firefox 🦊
- [ublock origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
- [privacy badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/)
- [cookie autodelete](https://addons.mozilla.org/en-US/firefox/addon/cookie-autodelete/)
- [https everywhere](https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/)
- [decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes)
- [duckduckgo privacy essential](https://addons.mozilla.org/en-US/firefox/addon/duckduckgo-for-firefox/)
- [chameleon](https://addons.mozilla.org/en-US/firefox/addon/chameleon-ext/)
- [stylus](https://addons.mozilla.org/fr/firefox/addon/styl-us/)
- [bloody vikings!](https://addons.mozilla.org/fr/firefox/addon/bloody-vikings/)
- [tabliss](https://addons.mozilla.org/fr/firefox/addon/tabliss/?src=external-tabliss.io)

## App Store
	mas install runcat
## DNS 🌐
	networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1
	
