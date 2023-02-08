# Setting up syntax highlighting

LINUX_PATH="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
MACOS_PATH="/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

USER_PATH=$HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [ -f $USER_PATH ]; then
        source $DEFAULT_PATH
else
        # [ref]: https://stackoverflow.com/a/3466183
        unameOut="$(uname -s)"
        case "${unameOut}" in
            Linux*)     source ${LINUX_PATH};;
            Darwin*)    source ${MACOS_PATH};;
        esac
fi

# Colors available
# black, red, green, yellow, blue, magenta, cyan, white
# 0	   , 1  , 2    , 3     , 4   , 5      , 6   , 7
# https://wiki.archlinux.org/index.php/Zsh#Colors

ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=049'
ZSH_HIGHLIGHT_STYLES[command]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=red,bold'

