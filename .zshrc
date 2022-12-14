# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export COMPOSE_HTTP_TIMEOUT=240
export PATH="/home/mreyes/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
export ARTIFACTORY_USER=matthew.reyes  # replace with your username!
export ARTIFACTORY_USERNAME=$ARTIFACTORY_USER  # ensures both web and java tooling get along
export ARTIFACTORY_API_KEY=cmVmdGtuOjAxOjE2OTI5MTgzODg6TFg4NXo3STZXazZKTTRVem9UeGhnWjN4U0Rl  # replace with your API key!
export PIP_INDEX_URL=https://$ARTIFACTORY_USERNAME:$ARTIFACTORY_API_KEY@urbanairship.jfrog.io/urbanairship/api/pypi/pypi/simple
alias cmMain="git checkout main; git pull; git checkout -; git merge main"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/mreyes/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/mreyes/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/mreyes/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/mreyes/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Kubectl aliases for gcloud
alias k="kubectl"
alias kstag="k --context=gke_ua-ops-transitional-stag_us-east1_airship-gke-1 --namespace=web"
alias danger_kprod="k --context=gke_ua-ops-transitional-prod_us-east1_airship-gke-1 --namespace=web"
alias danger_keucs="k --context=gke_ua-ops-transitional-eucs_europe-west1_airship-gke-1 --namespace=web"

# Aliases for creating pods PROD
alias create_pod_prod="airship-admin --environment=prod bespoke create airship-matt-shell"
alias destroy_pod_prod="airship-admin --environment=prod bespoke destroy airship-matt-shell"
alias upload_baggage_prod="airship-admin --environment=prod baggage upload airship-matt-shell"
alias shell_prod="airship-admin --environment=prod --pod=airship-matt-shell shell"
alias pyshell_prod="airship-admin --environment=prod sh --pod=airship-matt-shell"

# Aliases for creating pods EU
alias create_pod_eucs="airship-admin --environment=eucs bespoke create airship-matt-shell"
alias destroy_pod_eucs="airship-admin --environment=eucs bespoke destroy airship-matt-shell"
alias upload_baggage_eucs="airship-admin --environment=eucs baggage upload airship-matt-shell"
alias shell_eucs="airship-admin --environment=eucs --pod=airship-matt-shell shell"
alias pyshell_eucs="airship-admin --environment=eucs sh --pod=airship-matt-shell"
