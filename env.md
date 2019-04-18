# MacOSX Install

## homebrew
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### cask version
	brew tap homebrew/cask-versions

### mas
	brew tap mas-cli/tap
	brew tap-pin mas-cli/tap
	
### package 

#### basic
	brew install cask htop curl ncdu wget bash-completion screenfetch imagesnap ffmpeg youtube-dl exa mas 
	
#### web dev
	brew install yarn composer git gpg npm iterm2 hyper upterm
	
#### fun
	brew install cmatrix cowsay fortune asciiquarium toilet lolcat sl mps-youtube

### cask apps

#### basics
	brew cask install appcleaner macdown copyq iina spectacle
	
#### web dev
	brew cask install atom visual-studio-code sequel-pro mongodb-compass-community postman coteditor
 	
#### other
	brew cask install min slack

## atom packages
	apm install atom-clock platformio-ide-terminal atom-beautify file-icons pigments color-picker atom-symfony2 highlight-selected language-generic-config php-twig atom-typescript react autoclose-html
	
## atom theme
	apm install dracula-theme

## code packages
	code --install-extension bmewburn.vscode-intelephense-client; code --install-extension dracula-theme.theme-dracula; code --install-extension christian-kohler.path-intellisense; code --install-extension naumovs.color-highlight; code --install-extension PKief.material-icon-theme
	
## config mac

### Activer tab sur les prompts de mac
	
	ctrl + fn7
	
### Dossier sites d'osx

	mkdir ~/Sites
	
## git

### config user
	git config --global user.name "foo-bar"
	git config --global user.email foo@bar.com

	#[user]
	#name = foo-bar
	#email = foo@bar.com
	#signingkey = 3AA5C34371567BD2
	
### config colors & alias
		
	[color]
		status = auto
		diff = auto
		ui = auto
	[push]
		default = current
	[alias]
		st = status
		cp = cherry-pick
		ready = rebase -i @{u}
		ls = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Ccyan\\ [%cn]" --decorate
		lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
		lt = log -n 5 --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
		ll = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Ccyan\\ [%cn]" --decorate --numstat
		lnc = log --pretty=format:"%h\\ %s\\ [%cn]"
		lds = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Ccyan\\ [%cn]" --decorate --date=short
		ld = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Ccyan\\ [%cn]" --decorate --date=relative
		le = log --oneline --decorate
		dr  = "!f() { git diff "$1"^.."$1"; }; f"
		lc  = "!f() { git ll "$1"^.."$1"; }; f"
		diffr  = "!f() { git diff "$1"^.."$1"; }; f"
		standup = log --since yesterday
		co = checkout
		cl = clone
		ci = commit
		pu = push
		br = branch
		cm = commit -m
		sl = stash list
		sa = stash apply
		ss = stash save
		sp = stash pop
		s = stash
		master = checkout master
		ignore = !([ ! -e .gitignore ] && touch .gitignore) | echo $1 >>.gitignore
		done = "!f() { git branch | grep "$1" | cut -c 3- | grep -v done | xargs -I{} git branch -m {} done-{}; }; f"
		chmod = config core.fileMode
		#up = pull --rebase

		# Set Upstream  =====
		su  = "!git branch -u origin/\"$(git rev-parse --abbrev-ref HEAD)\""
		
		# Push branch =====
		pb  = "!git push origin \"$(git rev-parse --abbrev-ref HEAD)\""
		
		# pull upstream =====
		up  = "!git pull --rebase origin \"$(git rev-parse --abbrev-ref HEAD)\""

	[core]
		editor = vi
	[credential]
		helper = cache
	[filter "lfs"]
		process = git-lfs filter-process
		required = true
		clean = git-lfs clean -- %f
		smudge = git-lfs smudge -- %f
	[commit]
		gpgsign = false


## clé ssh
	ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
	Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
	Enter passphrase (empty for no passphrase): [Type a passphrase]
	Enter same passphrase again: [Type passphrase again]
	
## clé GPG

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
	
## yarn 
	
### Créer une applicaiton react

	yarn global add create-react-app
> create-react-app my-app
	
### Killer une application via une rechercher

	yarn global add fkill-cli
> fkill
	
### Remplacer le man
	yarn global add tldr
	
> tldr git
	
### Cours de crypto dans la terminal

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

### Télécharger ou streamer video youtube
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

### Meteo dans le terminal
	yarn global add weather-cli
> weather -c paris -C france


### Jeux
	yarn global add battleship-game mastermind-game 
	
## php72 & apache

### uninstall 
	brew remove --force --ignore-dependencies httpd; brew remove --force --ignore-dependencies php70-xdebug php71-xdebug; brew remove --force --ignore-dependencies php70-imagick php71-imagick; brew remove --ignore-dependencies --force php70 php71 php72

### install
	brew install httpd php72

### start service
	brew services start httpd
	
### extension
	brew install php72-cs-fixer

## mysql

### install
	brew install mysql

### start service
	brew services start mysql

### changer mot de passe
	mysql -u root -p
	ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'myNewPass11!';

## mongodb

### install
	brew install mongodb

### start service
	brew services start mongodb

### database
	sudo mkdir -p /data/db
	sudo chown -R `id -un` /data/db

## BASH
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
	
### alias

#### bash_profile

	if [ -f $(brew --prefix)/etc/bash_completion ]; then
		. $(brew --prefix)/etc/bash_completion
	fi

	## git config
	alias egitconfig="open ~/.gitconfig"
	alias gitconfig="cat ~/.gitconfig"
	
	# alias file 
	## les raccourcis de commande
	alias raccourci="cat ~/.bash_profile"
	alias eraccourci="atom ~/.bash_profile"
	## pour les bind de touche de clavier
	alias input="cat ~/.inputrc"
	alias einput="atom ~/.inputrc"
	## synchroniser 2 fichiers
	#alias syncalias="rsync ~/. bash_profile ~/.bashrc"
	​
	# mac
	## afficher ou cacher les fichiers/dossiers cachés
	alias finderShowHidden ='defaults write com.apple.finder AppleShowAllFiles YES; sudo killall Finder'
	alias finderHideHidden ='defaults write com.apple.finder AppleShowAllFiles NO; sudo killall Finder'
	## recherche de fichier
	alias f.="find . -type f -name"
	alias ff="find / -type f -name"
	## grep de l'historique de commande
	alias hg="history | grep"
	## dump la liste d'application
	alias dumpapp="system_profiler SPApplicationsDataType > ~/Desktop/MyFilesTypes.txt"
	## cache un dossier ou un fichier
	alias hide="sudo chflags hidden"
	## activte darkmode for < Mojave
	alias darkmode="defaults write -g NSWindowDarkChocolate -bool TRUE; echo 'Dark thème activé, vous devez fermer et rouvrir votre session'"
	## desactivate darkmode for < Mojave
	alias stopdarkmode="defaults write -g NSWindowDarkChocolate -bool FALSE; echo 'Dark thème désactivé,vous devez fermer et rouvrir votre session'"
	## affiche un message sur l'écran de dévérouillage
	alias lockMessage='sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText '
	alias lockMessageDelete='sudo defaults delete /Library/Preferences/com.apple.loginwindow'
	## recharge les alias
	alias reload='source ~/.bash_profile'
		
	# server
	## apache
	alias apacheStart="/usr/local/bin/apachectl start"
	alias apacheStop="/usr/local/bin/apachectl stop"
	alias apacheRestart="/usr/local/bin/apachectl restart"
	## base de donnée
	alias mysqlStart="/usr/local/bin/mysql.server start"
	alias mongoStart="mongod"
	## hosts
	alias host="cat /etc/hosts"
	alias ehost="atom /etc/hosts"
	## fichier conf
	alias conf="cd /usr/local/etc/httpd/extra"

	# Change directory aliases
	alias home='cd ~'
	alias www="cd ~/Sites"
	alias docs='cd ~/Documents'
	alias dls='cd ~/Downloads'
	alias downloads='cd ~/Downloads'
	alias ..='cd ../'
	alias ...='cd ../..'
	alias ....='cd ../../..'
	alias .....='cd ../../../..'

	# apps installation
	alias install-edex="cd; git clone https://github.com/GitSquared/edex-ui; cd edex-ui;  npm install ; npm run build-darwin ; cp -r dist/mac/eDEX-UI.app /Applications/ ; cd ; rm -rf edex-ui/"
	alias install-kickthemout="brew install python3 libdnet nmap ; git clone https://github.com/k4m4/kickthemout.git /Applications/ ; cd /Applications/kickthemout ; sudo -H pip3 install -r requirements.txt"
	alias install-keeper="cd; git clone https://github.com/ardagedikk/keeper.git; cd keeper; yarn install; yarn build-osx; cp -r build/Keeper-darwin-x64/Keeper.app /Applications/ ; cd ; rm -rf keeper/"
	alias install-osxcputemp="cd; git clone https://github.com/lavoiesl/osx-cpu-temp.git; cd osx-cpu-temp; sudo make install; cd; rm -rf osx-cpu-temp"
	alias install-freetube="cd; git clone https://github.com/FreeTubeApp/FreeTube.git; cd FreeTube; yarn install; yarn make:mac; cp -r out/FreeTube-darwin-x64/FreeTube.app /Applications; cd; rm -rf FreeTube"
	alias install-tetris="cd;curl -L https://github.com/samtay/tetris/releases/download/0.1.2/tetris-`uname -s`-`uname -m` -o tetris; chmod +x tetris;sudo mv tetris /usr/local/bin/"


	
	# apps launcher
	## terminal du futur
	alias edex="open /Applications/eDEX-UI.app"
	## déconnecte tout le monde du réseau
	alias kickthemout="sudo python3 /Applications/kickthemout/kickthemout.py"
	## application permetant de crypter/decrypter des fichiers/dossiers
	alias keeper="open /Applications/Keeper.app"
	

	# apps
	## rechercher duckduckgo sur le terminal
	alias ddgr="ddgr -r fr-fr -x -n 5 --unsafe"
	## matrix
	alias matrix='LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
	alias matrixBinarie='echo -e "1"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="0 $r";else v="1 $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'
	## film starwars sur le terminal
	alias starwars="telnet towel.blinkenlights.nl"
	## mp3 ou mp4 d'une video youtube
	alias yt-mp3="youtube-dl --extract-audio --audio-format mp3 -i"
	alias yt-mp4="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' -i"
	## % d'espace que prend un dossier et/ou des fichiers
	alias space="ncdu"
	## affiche la date toute les secondes
	alias dateColor="while true; do echo '$(date '+%D %T' | toilet -f term -F border --gay)'; sleep 1; done"
	## message quand ouverture du bash
	alias screenfetch='screenfetch -E'
	## message quand ouverture du bash
	alias takesnap="imagesnap -w 1 ~/snapshot.png && open ~/snapshot.png"
	## speedted on terminal
	alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test1000.zip"
	## message de bienvenue
	alias welcome='animal=("meow" "turtle" "stegosaurus");fortune | cowsay -f ${animal[$RANDOM % ${#animal[@]} ]} | lolcat'


	# some more ls aliases
	alias ls="ls -GFh"
	
	if [ -f $(brew --prefix)/bin/exa ]; then
	  alias ll="exa -abghl"
	  alias l="exa -bghl"
	  alias la="exa -a"
	else 
	  alias ll="ls -alF"
	  alias l="ls -l"
	  alias la="ls -a"
	fi
		
	# chmod commands
	alias mx='sudo chmod a+x'
	alias 000='sudo chmod -R 000'
	alias 644='sudo chmod -R 644'
	alias 666='sudo chmod -R 666'
	alias 755='sudo chmod -R 755'
	alias 777='sudo chmod -R 777'
	alias droit='sudo chmod -R 777'
	
	# transferer un fichier en ligne de commande
	transfer() {
	 # write to output to tmpfile because of progress bar
	 tmpfile=$( mktemp -t transferXXX )
	 curl --progress-bar --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile;
	 cat $tmpfile;
	 printf "\n";
	 rm -f $tmpfile;
	}
	
	## youtube video in picture in picture
	ytpip() {
	  ytdl --print-url --filter-container=mp4 $1 | open-pip
	}
	
	## connaitre la méteo de la semaine avec dessins avec une ville en argument
	meteo() {
	  curl https://wttr.in/$1
	}
	
	## connaitre la méteo d'aujourd'hui avec ville et pays en argument
	temps() {
	  weather -c $1 -C $2
	}
	
	## connaitre son ip
	getip() {
	  curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'
	}
	
	## converti une video and mp4
	convertToMp4 () {
	  ffmpeg -i "$1" -c:a aac -b:a 128k -c:v libx264 -crf 23 "$1".mp4
	}
	
	## move something to the trash
	del() {
	  mv $@ ~/.Trash
	}
	
	# decompresse tous les types fichiers
	extract () {
	if [ -f $1 ] ; then
	  case $1 in
	    *.tar.bz2)   tar xjf $1     ;;
	    *.tar.gz)    tar xzf $1     ;;
	    *.bz2)       bunzip2 $1     ;;
	    *.rar)       unrar e $1     ;;
	    *.gz)        gunzip $1      ;;
	    *.tar)       tar xf $1      ;;
	    *.tbz2)      tar xjf $1     ;;
	    *.tgz)       tar xzf $1     ;;
	    *.zip)       unzip $1       ;;
	    *.Z)         uncompress $1  ;;
	    *.7z)        7z x $1        ;;
	    *)     echo "'$1' cannot be extracted via extract()" ;;
	     esac
	 else
	     echo "'$1' is not a valid file"
	 fi
	}
	
	# couleur pour le "ls"
	export CLICOLOR=1
	export LSCOLORS=ExFxBxDxCxegedabagacad
	
	# pour le PS1
	if [ -f `which powerline-daemon` ]; then
		export PATH=$PATH:$HOME/Library/Python/2.7/bin
	  powerline-daemon -q
	  POWERLINE_BASH_CONTINUATION=1
	  POWERLINE_BASH_SELECT=1
	  . /Users/$USER/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
	fi
	
	# infos du mac
	if [ -f $(brew --prefix)/bin/neofetch ] ; then
	  neofetch
	fi
	
	# message du jour dit par un animal coloré
	if [ -f $(brew --prefix)/bin/fortune ] && [ -f $(brew --prefix)/bin/cowsay ] && [ -f $(brew --prefix)/bin/lolcat ] && [ -f $(brew --prefix)/bin/neofetch ]; then
	  welcome
	fi
	
	export GPG_TTY=$(tty)

#### inputrc

	set completion-ignore-case on
	set show-all-if-ambiguous on
	set show-all-if-unmodified on
	"e[A": history-search-backward
	"e[B": history-search-forward

### Étoile mot de passe
	
	sudo visudo

Localisez ensuite la ligne
	
	Defaults                  env_reset

Et ajoutez-lui le paramètre pwfeedback comme ceci :

	Defaults                  env_reset,pwfeedback
	
redemarrer le terminal

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


## Navigateur

### Firefox 
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
## DNS

	networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1
	
