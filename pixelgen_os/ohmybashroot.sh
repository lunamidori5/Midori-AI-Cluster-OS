# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/root/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="rjorgenson"

ENABLE_CORRECTION="true"

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

completions=(
  git
  composer
  docker
  docker-compose
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
  pyenv
)

alias fastfetch='fastfetch --logo-type iterm --logo /etc/pixalarch-logo.png --logo-width 40 --logo-height 21 --logo-padding 2 --color blue'

source "$OSH"/oh-my-bash.sh