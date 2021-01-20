#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#
#  Sections:
#  1.  Environment Configuration
#  2.  Make Terminal Better (remapping defaults and adding functionality)
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Add color to terminal
#   --------------------------------------------------------------------------
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad

#   Change prompt
#   --------------------------------------------------------------------------
    txtred='\e[0;31m'	# Red
    txtgrn='\e[0;32m'	# Green
    bldgrn='\e[1;32m'	# Bold Green
    bldpur='\e[1;35m'	# Bold Purple
    txtrst='\e[0m'	# Text Reset
    
    emojis=("🐶" "🐱" "🐹" "🦊" "🦁" "🐷")
    EMOJI=${emojis[ $RANDOM % ${#emojis[@]} ]}
    HOST_NAME=edwins-air
    
    print_before_the_prompt () {
	dir=$PWD
	home=$HOME
	dir=${dir/"$HOME"/"~"}
	printf "\n$txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
    }
    
    export PROMPT_COMMAND=print_before_the_prompt
    export PS1="$EMOJI > "

#   Set path
#   --------------------------------------------------------------------------
    export GOPATH="$HOME/dev/go"
    export LDFLAGS="-L/usr/local/opt/readline/lib"
    export CPPFLAGS="-I/usr/local/opt/readline/include"
    export LDFLAGS="-L/usr/local/opt/sqlite/lib"
    export CPPFLAGS="-I/usr/local/opt/sqlite/include"
    export PATH="$PATH:/usr/local/opt/sqlite/bin:$GOPATH"

#   Set bash history
#   --------------------------------------------------------------------------
    export HISTSIZE=5000
    export HISTFILESIZE=10000

#   Set default editor
#   --------------------------------------------------------------------------
    export EDITOR=/usr/bin/nano


#   -----------------------------
#   2. MAKE TERMINAL BETTER
#   -----------------------------

fortune | cowsay -f tux
