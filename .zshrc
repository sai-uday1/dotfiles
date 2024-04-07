# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sai/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# My own config
#export PROMPT='%m:%~ %n %# '
#PROMPT="%~$ "
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
# %F{green}%*%f # for time use this
 



#run() {
#	$srcname = "$1.cpp"
#	g++ src

function run ()
    {
    local objname="out"
    local srcname="${1}.cpp"
    g++ -o "out" "$srcname" && ./out
    }


alias vi=vim
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char


export PATH="$HOME/.local/bin:$PATH"
