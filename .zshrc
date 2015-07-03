export ZSH=$HOME/.oh-my-zsh

# Themes reside in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Environment variables
export EDITOR='vim'
export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"

# History
HISTFILE=~/.zsh-histfile
HISTSIZE=10000
SAVEHIST=10000
setopt incappendhistory
setopt sharehistory
setopt extendedhistory

alias ls='ls --color' #I like color
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias top='htop'      #default to colorful top
alias cleanlatex='clean_latex'
alias apps='run_apps'
alias matlab='. /usr/local/MATLAB/R2014a/bin/matlab'
alias logout='gnome-session-quit'
alias zoom='/opt/rotateright/Zoom/Zoom'
alias zoomterm='/opt/rotateright/Zoom/bin/zoom'
alias dict='sdcv'

# Trash
clean_trash() {
  rm -fr ~/.trash/*
}

move_to_trash() {
  mv "$@" ~/.trash
}
alias rm='move_to_trash'

function clean_latex() {
  if [ -f *.aux  ]; then; rm *.aux; fi
  if [ -f *.log  ]; then; rm *.log; fi
  if [ -f *.blg  ]; then; rm *.blg; fi
  if [ -f *.bbl  ]; then; rm *.bbl; fi
  if [ -f *.out  ]; then; rm *.out; fi
  if [ -f *.pdfsync  ]; then; rm *.pdfsync; fi
}

# Jump functions
export JUMPPATH=$HOME/.jumps
function jump {
   if [[ $1 == "-m" ]]; then    # MARK THIS DIRECTORY
      mkdir -p "$JUMPPATH"; ln -s "$(pwd)" "$JUMPPATH/$2"
   elif [[ $1 == "-l" ]]; then  # LIST MARKS
      ls -l "$JUMPPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
   elif [[ $1 == "-u" ]]; then  # UNMARK THE SPECIFIED DIRECTORY
      rm -i "$JUMPPATH/$2"
   elif [[ $1 == "-c" ]]; then  # CLEAR ALL MARKED DIRECTORIES
      rm -ri "$JUMPPATH"
   elif [[ $1 == "-h" ]]; then  # DISPLAY OPTIONS
      echo -e "Flags:\n\t-m\tMark this directory\n\t-l\tList marks\n\t-u\tUnmark specified directory\n\t-c\tClear all marked directories"
   else                         # JUMP DIRECTLY TO SPECIFIED DIRECTORY
      cd -P "$JUMPPATH/$1" 2>/dev/null || echo "No such mark: $1"
   fi
}

# ROS
source /opt/ros/hydro/setup.zsh
source ~/.zsh_functions

unsetopt NOMATCH
