#!/bin/bash

# homebrew packages
source ./packages/homebrew.sh
# homebrew cask package
source ./packages/homebrew-cask.sh
# yarn packages
source ./packages/yarn.sh
# atom packages
source ./packages/atom.sh
# code package
source ./packages/code.sh
# add functions
source functions.sh
# colors
source ./config/colors.sh

echo -e "${RED}LET'S${NC} ${GREEN}GO${NC} ${YELLOW}MA${NC} ${PURPLE}BOIIII${NC}"

# check if homebrew is installed
if test ! $(which brew); then
	echo -e "${GREEN}Install homebrew...${NC}"
  #ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update homebrew
echo -e "${GREEN}Update homebrew...${NC}"
#brew update

# cask and mas
echo -e "${GREEN}Install cask and mas...${NC}"
# install mac osx app 
if test ! $(which cask); then
	echo -e "${GREEN}Install cask-version...${NC}"
	#brew tap homebrew/cask-versions
fi

# install macapp from the mac app store
if test ! $(which mas); then
	echo -e "${GREEN}Install mas...${NC}"
	#brew tap mas-cli/tap
	#brew tap-pin mas-cli/tap
fi

echo -e "\n${GREEN}Install homebrew packages...${NC}"

# basic packages
echo -e "\n${GREEN}Install homebrew basic packages...${NC}"
echo -e "${PURPLE}${BASIC_PACKAGES[@]}${NC}\n"
read -r -p "$(echo -e Do you want ${RED}BASIC_PACKAGES${NC} ? [press ennter]) " input
case $input in
	[yY][eE][sS]|[yY]|'')
		brew_install ${BASIC_PACKAGES[@]}
	;;
esac

# dev packages
echo -e "\n${GREEN}Install homebrew dev package...${NC}"
echo -e "${PURPLE}${DEV_PACKAGES[@]}${NC}\n"
read -r -p "$(echo -e Do you want ${RED}DEV_PACKAGES${NC} ? [press enter])" input
case $input in
	[yY][eE][sS]|[yY]|'')
		brew_install ${DEV_PACKAGES[@]}
	;;
esac

# fun packages
echo -e "\n${GREEN}Install homebrew fun packages...${NC}"
echo -e "${PURPLE}${FUN_PACKAGES[@]}${NC}\n"
read -r -p "$(echo -e Do you want ${RED}FUN_PACKAGES${NC} ? [press enter])" input
case $input in
	[yY][eE][sS]|[yY]|'')
		brew_install ${FUN_PACKAGES[@]}
	;;
esac

# mac osx apps
echo -e "\n${GREEN}Install mac osx apps ${NC}"

# basic mac osx apps
echo -e "\n${GREEN}Install basic mac osx apps ${NC}"
echo -e "${PURPLE}${BASIC_CASKS[@]}${NC}\n"
read -r -p "$(echo -e Do you want ${RED}BASIC_CASKS${NC} ? [press enter])" input
case $input in
	[yY][eE][sS]|[yY]|'')
		brew_cask_install ${BASIC_CASKS[@]}
	;;
esac

# dev mac osx apps
echo -e "${PURPLE}${DEV_CASKS[@]}${NC}\n"
read -r -p "$(echo -e Do you want ${RED}DEV_CASKS${NC} pour le dev web ? [press enter])" input
case $input in
	[yY][eE][sS]|[yY]|'')
		brew_cask_install ${DEV_CASKS[@]}
 esac
 	
# others mac osx apps
echo -e "${PURPLE}${OTHER_CASKS[@]}${NC}\n"
read -r -p "$(echo -e Do you want ${RED}OTHER_CASKS${NC} ? [press enter])" input
case $input in
	[yY][eE][sS]|[yY]|'')
	brew_cask_install ${OTHER_CASKS[@]}
esac

# atom packages
if test $(which atom); then
	echo -e "${PURPLE}${ATOM_PACKAGE[@]}${NC}\n"
	read -r -p "$(echo -e Do you want super ${GREEN}atom-package${NC} ? [press enter])" input
	case $input in
		[yY][eE][sS]|[yY]|'')
			echo -e "${ORANGE}${ATOM_PACKAGE[@]}${NC}"
	 		echo -e "${GREEN}Install atom-packages...${NC}\n"
	 		apm install ${ATOM_PACKAGE[@]}
		;;
	esac
fi

# atom packages
if test $(which code); then
	echo -e "${PURPLE}${CODE_PACKAGE[@]}${NC}\n"
	read -r -p "$(echo -e Do you want super ${GREEN}code-package${NC} ? [press enter])" input
	case $input in
		[yY][eE][sS]|[yY]|'')
			echo -e "${ORANGE}${CODE_PACKAGE[@]}${NC}"
	 		echo -e "${GREEN}Install code-packages...${NC}\n"
	 		code --install-extension ${ATOM_PACKAGE[@]}
		;;
	esac
fi

# dracula theme for atom
if test $(which atom); then
  read -r -p "$(echo -e Do you want ${PURPLE}dracula${NC} theme for atom ? [press enter])" input
	case $input in
		[yY][eE][sS]|[yY]|'')
	 		echo -e "${PURPLE}Install atom dracula theme... mouhahaha${NC}\n"
	 		apm install dracula-theme
	 	;;
	esac
fi

# yarn packages
if test $(which yarn); then
	echo -e "${PURPLE}${YARN_PACKAGE[@]}${NC}\n"
  read -r -p "$(echo -e Do you want ${CYAN}yarn packages${NC} ? [press enter])" input
	case $input in
		[yY][eE][sS]|[yY]|'')
			yarn_global_add ${YARN_PACKAGE[@]}
		;;
	esac
fi

# alias
echo -e "\n${GREEN}Install alias...${NC}"
read -r -p "$(echo -e I have ${GREEN}super${NC} ${PURPLE}cool${NC} ${YELLOW}aliases${NC} if you say ${GREEN}YES${NC} I will ${RED}add my bash config ${NC} into your ${ORANGE}.bash_profile${NC} ? [press enter])" input
case $input in
	[yY][eE][sS]|[yY]|'')
 		#echo "$(cat ./config/bash_profile.txt)" >> ~/.bash_profile
 	;;
esac

#osx config
echo -e "\n${GREEN}Configuring OSX...${NC}"

# Sites
read -r -p "$(echo -e Create ${GREEN}~/Sites/${NC} folder ? [press enter])" input
case $input in
	[yY][eE][sS]|[yY]|'')
		echo -e "Create {GREEN}~/Sites${NC} folder OSX...\n"
 		#mkdir ~/Sites
 	;;
esac

# git config
if test $(which git); then
	read -r -p "$(echo -e Do you want to configure ${RED}git${NC} ? [press enter])" input
	case $input in
		[yY][eE][sS]|[yY]|'')
		 	echo -e "\n${RED}Configuring git...${NC}"
			
			read -r -p "$(echo -e Your github ${RED}pseudo${NC} ? )" input
			if [ "$input" != "" ]; then
				echo -e "${GREEN}$input${NC}\n"
		   	#git config --global user.name "$input"
			fi
			
			read -r -p "$(echo -e Your github ${RED}email${NC} ? )" input
			if [ "$input" != "" ]; then
				echo -e "${GREEN}$input${NC}\n"
		   	#git config --global user.email "$input"
			fi
	 	;;
	esac

	read -r -p "$(echo -e Do you want to add my ${GREEN}git${NC} ${RED}aliases${NC} ? [press enter])" input
	case $input in
		[yY][eE][sS]|[yY]|'')
			echo -e "${GREEN}Add git alias...{NC}\n"
	 		#echo "$(cat ./config/alias_git.txt)" >> ~/.gitconfig
	 	;;
	esac
fi

#source ~/.bash_profile

echo -e "${RED}END${NC} ${PURPLE}OF${NC} ${GREEN}INSTALLATION${NC} ${YELLOW}OF${NC} ${BLUE}LENVIRONNEMENT${NC}" 

