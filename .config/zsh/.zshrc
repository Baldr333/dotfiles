autoload -U colors && colors # Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd	# cd automatically into typed dir
stty stop undef
setopt interactive_comments

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.cache/zsh/history

# Load aliases and shortcuts
#[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
#[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

# Auto/tab complete ? prompinit ? prompt gentoo ??
autoload -U compinit promptinit
compinit
promptinit #; prompt gentoo
zstyle ':completion:*' menu select
zmodload zsh/complist

# Include hidden files in autocomplete
_comp_options+=(globdots)







# Load syntax highlighting; should be last.
source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh 2>/dev/null
