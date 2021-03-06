#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'


function print_stage {
	printf "${YELLOW}${1}${NC}\n"
}

function print_info {
	printf "${BLUE}${1}${NC}\n"
}

function print_success {
	printf "${GREEN}${1}${NC}\n"
}

function print_error {
	printf "${RED}${1}${NC}\n"
}

# https://github.com/fearside/ProgressBar/blob/master/progressbar.sh
# Author : Teddy Skarin
function progress_bar {
	let _progress=(${1}*100/${2}*100)/100
	let _done=(${_progress}*4)/10
	let _left=40-$_done
	_done=$(printf "%${_done}s")
	_left=$(printf "%${_left}s")
	print_info "\r${3} Progress : [${_done// /#}${_left// /-}] ${_progress}%%"
}

export -f progress_bar
export -f print_stage
export -f print_info
export -f print_success
export -f print_error
