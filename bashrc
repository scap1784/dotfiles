# .bashrc
SHELL=/bin/zsh exec /bin/zsh --login
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/apollo/env/SDETools/lib/

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export PATH=$HOME/.toolbox/bin:$PATH

export PATH=$HOME/.toolbox/bin:$PATH

