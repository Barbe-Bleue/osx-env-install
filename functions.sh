function brew_install () {
	local LIST_APP=("$@")
	
	tLen=${#LIST_APP[@]}

	TO_INSTALL=()
	
	#echo -e "${CYAN}Here are the cask app for LIST_APP !${NC}"
	#echo -e "${PURPLE}${LIST_APP[@]}${NC}\n"
	for (( i=0; i<${tLen}; i++ ));
	do
		read -r -p "$(echo -e Install ${BLUE}${LIST_APP[$i]}${NC} ? [press enter])" input
		case $input in
			[yY][eE][sS]|[yY]|'')
				echo -e "Add ${GREEN}${LIST_APP[$i]}...${NC}\n"
				TO_INSTALL+=( "${LIST_APP[$i]}" )
			;;
			[nN]][oO]|[nN])
				echo -e "Remove ${RED}${LIST_APP[$i]}...${NC}\n"
			;;
		esac
	done
	echo -e "${GREEN}Installing the following osx apps${NC}"
	echo -e "${ORANGE}${TO_INSTALL[@]}${NC}\n"
	#brew cask install ${TO_INSTALL[@]} 
}

function yarn_global_add () {
	local LIST_YARN=("$@")
	
	tLen=${#LIST_YARN[@]}
	
	TO_INSTALL=()
	
	#echo -e "${CYAN}Here are the packages...${NC}"
	#echo -e "${PURPLE}${LIST_YARN[@]}${NC}\n"
	
	for (( i=0; i<${tLen}; i++ ));
	do
		read -r -p "$(echo -e Install ${BLUE}${LIST_YARN[$i]}${NC} ? [press enter])" input
		case $input in
			[yY][eE][sS]|[yY]|'')
				echo -e "Add ${GREEN}${LIST_YARN[$i]}${NC}...\n"
				TO_INSTALL+=( "${LIST_YARN[$i]}" )
			;;
			[nN]][oO]|[nN])
				echo -e "Remove ${RED}${LIST_YARN[$i]}...${NC}\n"
			;;
		esac
	done
	echo -e "${GREEN}Installing the following yarn packages${NC}"
	echo -e "${ORANGE}${TO_INSTALL[@]}${NC}"
	yarn global add ${TO_INSTALL[@]} 
}
