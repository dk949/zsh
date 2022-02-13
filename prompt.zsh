#!/usr/bin/zsh

# General

## Prompt
export SPACESHIP_PROMPT_ADD_NEWLINE=false                                  # Adds a newline character before each prompt line
export SPACESHIP_PROMPT_SEPARATE_LINE=false                                # Make the prompt span across two lines
export SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=false                            # Shows a prefix of the first section in prompt
export SPACESHIP_PROMPT_PREFIXES_SHOW=true                                 # Show prefixes before prompt sections or not
export SPACESHIP_PROMPT_SUFFIXES_SHOW=true                                 # Show suffixes before prompt sections or not
export SPACESHIP_PROMPT_DEFAULT_PREFIX='via '                              # Default prefix for prompt sections
export SPACESHIP_PROMPT_DEFAULT_SUFFIX=' '                                 # Default suffix for prompt section

## Char
export SPACESHIP_CHAR_PREFIX=''                                            # Prefix before prompt character
export SPACESHIP_CHAR_SUFFIX=" "                                           # Suffix after prompt character
export SPACESHIP_CHAR_SYMBOL=❯                                             # Prompt character to be shown before any command
export SPACESHIP_CHAR_SYMBOL_ROOT=$SPACESHIP_CHAR_SYMBOL                   # Prompt character to be shown before any command for the root user
export SPACESHIP_CHAR_SYMBOL_SECONDARY=$SPACESHIP_CHAR_SYMBOL              # Secondary prompt character to be shown for incomplete commands
export SPACESHIP_CHAR_COLOR_SUCCESS=green                                  # Color of prompt character if last command completes successfully
export SPACESHIP_CHAR_COLOR_FAILURE=red                                    # Color of prompt character if last command returns non-zero exit-code
export SPACESHIP_CHAR_COLOR_SECONDARY=yellow                               # Color of secondary prompt character

## Time
export SPACESHIP_TIME_SHOW=false                                           # Show time (set to true for enabling)
export SPACESHIP_TIME_PREFIX='at '                                         # Prefix before time section
export SPACESHIP_TIME_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX              # Suffix after time section
export SPACESHIP_TIME_COLOR=yellow                                         # Color of time section
export SPACESHIP_TIME_FORMAT=false                                         # Custom date formatting ZSH date formats
export SPACESHIP_TIME_12HR=false                                           # Format time using 12-hour clock (am/pm)

## User
export SPACESHIP_USER_SHOW=always                                          # Show user section (true, false, always or needed)
export SPACESHIP_USER_PREFIX='with '                                       # Prefix before user section
export SPACESHIP_USER_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX              # Suffix after user section
export SPACESHIP_USER_COLOR=yellow                                         # Color of user section
export SPACESHIP_USER_COLOR_ROOT=red                                       # Color of user section when it's root

## Host
export SPACESHIP_HOST_SHOW=true                                            # Show host section (true, false or always)
export SPACESHIP_HOST_SHOW_FULL=false                                      # Show full hostname section (true, false)
export SPACESHIP_HOST_PREFIX='at '                                         # Prefix before the connected SSH machine name
export SPACESHIP_HOST_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX              # Suffix after the connected SSH machine name
export SPACESHIP_HOST_COLOR=blue                                           # Color of host section
export SPACESHIP_HOST_COLOR_SSH=green                                      # Color of host in SSH connection

## Dir
export SPACESHIP_DIR_SHOW=true                                             # Show directory section
export SPACESHIP_DIR_PREFIX=                                               # Prefix before current directory
export SPACESHIP_DIR_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX               # Suffix after current directory
export SPACESHIP_DIR_TRUNC=0                                               # Number of folders of cwd to show in prompt, 0 to show all
export SPACESHIP_DIR_TRUNC_PREFIX=''                                       # Prefix before cwd when it's truncated. For example …/ or .../, empty to disable
export SPACESHIP_DIR_TRUNC_REPO=true                                       # While in git repo, show only root directory and folders inside it
export SPACESHIP_DIR_COLOR=cyan                                            # Color of directory section
export SPACESHIP_DIR_LOCK_SYMBOL=' '                                      # The symbol displayed if directory is write-protected (requires powerline patched font)
export SPACESHIP_DIR_LOCK_COLOR=red                                        # Color for the lock symbol

## Execution time
export SPACESHIP_EXEC_TIME_SHOW=true                                       # Show execution time
export SPACESHIP_EXEC_TIME_PREFIX='took '                                  # Prefix before execution time section
export SPACESHIP_EXEC_TIME_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX         # Suffix after execution time section
export SPACESHIP_EXEC_TIME_COLOR=yellow                                    # Color of execution time section
export SPACESHIP_EXEC_TIME_ELAPSED=2                                       # The minimum number of seconds for showing execution time section

## Battery
export SPACESHIP_BATTERY_SHOW=true                                         # Show battery section or not (true, false, always or charged)
export SPACESHIP_BATTERY_PREFIX=                                           # Prefix before battery section
export SPACESHIP_BATTERY_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX           # Suffix after battery section
export SPACESHIP_BATTERY_SYMBOL_CHARGING='⇡'                               # Character to be shown if battery is charging
export SPACESHIP_BATTERY_SYMBOL_DISCHARGING='⇣'                            # Character to be shown if battery is discharging
export SPACESHIP_BATTERY_SYMBOL_FULL=' '                                   # Character to be shown if battery is full
export SPACESHIP_BATTERY_THRESHOLD=20                                      # Battery level below which battery section will be shown

## Vi mode
export SPACESHIP_VI_MODE_SHOW=false                                        # Shown current Vi-mode or not
export SPACESHIP_VI_MODE_PREFIX=                                           # Prefix before Vi-mode section
export SPACESHIP_VI_MODE_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX           # Suffix after Vi-mode section
export SPACESHIP_VI_MODE_INSERT='[I]'                                      # Text to be shown when in insert mode
export SPACESHIP_VI_MODE_NORMAL='[N]'                                      # Text to be shown when in normal mode
export SPACESHIP_VI_MODE_COLOR=white                                       # Color of Vi-mode section

## Jobs
export SPACESHIP_JOBS_SHOW=true                                            # Show background jobs indicator
export SPACESHIP_JOBS_PREFIX=                                              # Prefix before the jobs indicator
export SPACESHIP_JOBS_SUFFIX=' '                                           # Suffix after the jobs indicator
export SPACESHIP_JOBS_SYMBOL='✦'                                           # Character to be shown when jobs are hiding
export SPACESHIP_JOBS_COLOR=blue                                           # Color of background jobs section
export SPACESHIP_JOBS_AMOUNT_PREFIX=                                       # Prefix before the number of jobs (between jobs indicator and jobs amount)
export SPACESHIP_JOBS_AMOUNT_SUFFIX=                                       # Suffix after the number of jobs
export SPACESHIP_JOBS_AMOUNT_THRESHOLD=1                                   # Number of jobs after which job count will be shown

## Exit code
export SPACESHIP_EXIT_CODE_SHOW=true                                       # Show exit code of last command
export SPACESHIP_EXIT_CODE_PREFIX=                                         # Prefix before exit code section
export SPACESHIP_EXIT_CODE_SUFFIX=' '                                      # Suffix after exit code section
export SPACESHIP_EXIT_CODE_SYMBOL=                                         # Character to be shown before exit code
export SPACESHIP_EXIT_CODE_COLOR=red                                       # Color of exit code section


# Interation

## git
export SPACESHIP_GIT_SHOW=true                                             # Show Git section
export SPACESHIP_GIT_PREFIX='on '                                          # Prefix before Git section
export SPACESHIP_GIT_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX               # Suffix after Git section
export SPACESHIP_GIT_SYMBOL=' '                                           # Character to be shown before Git section (requires powerline patched font)

### git branch
export SPACESHIP_GIT_BRANCH_SHOW=true                                      # Show Git branch subsection
export SPACESHIP_GIT_BRANCH_PREFIX=$SPACESHIP_GIT_SYMBOL                   # Prefix before Git branch subsection
export SPACESHIP_GIT_BRANCH_SUFFIX=''                                      # Suffix after Git branch subsection
export SPACESHIP_GIT_BRANCH_COLOR=magenta                                  # Color of Git branch subsection

### git status
export SPACESHIP_GIT_STATUS_SHOW=true                                      # Show Git status subsection
export SPACESHIP_GIT_STATUS_PREFIX=' ['                                    # Prefix before Git status subsection
export SPACESHIP_GIT_STATUS_SUFFIX=']'                                     # Suffix after Git status subsection
export SPACESHIP_GIT_STATUS_COLOR=red                                      # Color of Git status subsection
export SPACESHIP_GIT_STATUS_UNTRACKED='?'                                  # Indicator for untracked changes
export SPACESHIP_GIT_STATUS_ADDED='+'                                      # Indicator for added changes
export SPACESHIP_GIT_STATUS_MODIFIED='!'                                   # Indicator for unstaged files
export SPACESHIP_GIT_STATUS_RENAMED='»'                                    # Indicator for renamed files
export SPACESHIP_GIT_STATUS_DELETED='✘'                                    # Indicator for deleted files
export SPACESHIP_GIT_STATUS_STASHED='$'                                    # Indicator for stashed changes
export SPACESHIP_GIT_STATUS_UNMERGED='='                                   # Indicator for unmerged changes
export SPACESHIP_GIT_STATUS_AHEAD='⇡'                                      # Indicator for unpushed changes (ahead of remote branch)
export SPACESHIP_GIT_STATUS_BEHIND='⇣'                                     # Indicator for unpulled changes (behind of remote branch)
export SPACESHIP_GIT_STATUS_DIVERGED='⇕'                                   # Indicator for diverged changes (diverged with remote branch)

## Mercurial
export SPACESHIP_HG_SHOW=false                                             # Show Mercurial section
export SPACESHIP_HG_PREFIX='on '                                           # Prefix before Mercurial section
export SPACESHIP_HG_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX                # Suffix after Mercurial section
export SPACESHIP_HG_SYMBOL='☿ '                                            # Character to be shown before Mercurial section

### Mercurial branch
export SPACESHIP_HG_BRANCH_SHOW=false                                      # Show Mercurial branch subsection
export SPACESHIP_HG_BRANCH_PREFIX=$SPACESHIP_HG_SYMBOL                     # Prefix before Mercurial branch subsection
export SPACESHIP_HG_BRANCH_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX         # Suffix after Mercurial branch subsection
export SPACESHIP_HG_BRANCH_COLOR=magenta                                   # Color of Mercurial branch subsection

### Mercurial branch status
export SPACESHIP_HG_STATUS_SHOW=false                                      # Show Mercurial status subsection
export SPACESHIP_HG_STATUS_PREFIX='['                                      # Prefix before Mercurial status subsection
export SPACESHIP_HG_STATUS_SUFFIX=']'                                      # Suffix after Mercurial status subsection
export SPACESHIP_HG_STATUS_COLOR=red                                       # Color of Mercurial status subsection
export SPACESHIP_HG_STATUS_UNTRACKED='?'                                   # Indicator for untracked changes
export SPACESHIP_HG_STATUS_ADDED='+'                                       # Indicator for added changes
export SPACESHIP_HG_STATUS_MODIFIED='!'                                    # Indicator for unstaged files
export SPACESHIP_HG_STATUS_DELETED='✘'                                     # Indicator for deleted files

## Package
export SPACESHIP_PACKAGE_SHOW=false                                        # Show package version
export SPACESHIP_PACKAGE_PREFIX='is '                                      # Prefix before package version section
export SPACESHIP_PACKAGE_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX           # Suffix after package version section
export SPACESHIP_PACKAGE_SYMBOL='⍽ '                                       # Character to be shown before package version
export SPACESHIP_PACKAGE_COLOR=red                                         # Color of package version section

## Node
export SPACESHIP_NODE_SHOW=true                                            # Current Node.js section
export SPACESHIP_NODE_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX              # Prefix before Node.js section
export SPACESHIP_NODE_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX              # Suffix after Node.js section
export SPACESHIP_NODE_SYMBOL='⬢ '                                          # Character to be shown before Node.js version
export SPACESHIP_NODE_DEFAULT_VERSION=                                     # Node.js version to be treated as default
export SPACESHIP_NODE_COLOR=green                                          # Color of Node.js section

## Ruby
export SPACESHIP_RUBY_SHOW=false                                           # Show Ruby section
export SPACESHIP_RUBY_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX              # Prefix before Ruby section
export SPACESHIP_RUBY_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX              # Suffix after Ruby section
export SPACESHIP_RUBY_SYMBOL='ruby '                                       # Character to be shown before Ruby version
export SPACESHIP_RUBY_COLOR=red                                            # Color of Ruby section

## Elm
export SPACESHIP_ELM_SHOW=false                                            # Show installed Elm version
export SPACESHIP_ELM_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX               # Prefix before Elm section
export SPACESHIP_ELM_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX               # Suffix after Elm section
export SPACESHIP_ELM_SYMBOL='elm '                                         # Character to be shown before Elm version
export SPACESHIP_ELM_COLOR=cyan                                            # Color of Elm section

## Elixr
export SPACESHIP_ELIXIR_SHOW=false                                         # Show Elixir section
export SPACESHIP_ELIXIR_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX            # Prefix before Elixir section
export SPACESHIP_ELIXIR_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX            # Suffix after Elixir section
export SPACESHIP_ELIXIR_DEFAULT_VERSION=                                   # Elixir version to be treated as default
export SPACESHIP_ELIXIR_SYMBOL='elixr '                                    # Character to be shown before Elixir version
export SPACESHIP_ELIXIR_COLOR=magenta                                      # Color of Elixir section

## Xcode
export SPACESHIP_XCODE_SHOW_LOCAL=false                                    # Current local Xcode version based on [xcenv]
export SPACESHIP_XCODE_SHOW_GLOBAL=false                                   # Global Xcode version based on [xcenv]
export SPACESHIP_XCODE_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX             # Prefix before Xcode section
export SPACESHIP_XCODE_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX             # Suffix after Xcode section
export SPACESHIP_XCODE_SYMBOL='xcode '                                     # Character to be shown before Xcode version
export SPACESHIP_XCODE_COLOR=blue                                          # Color of Xcode section

## Swift
export SPACESHIP_SWIFT_SHOW_LOCAL=false                                    # Current local Swift version based on [swiftenv]
export SPACESHIP_SWIFT_SHOW_GLOBAL=false                                   # Global Swift version based on [swiftenv]
export SPACESHIP_SWIFT_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX             # Prefix before the Swift section
export SPACESHIP_SWIFT_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX             # Suffix to be shown before the Swift section
export SPACESHIP_SWIFT_SYMBOL='swift '                                     # Character to be shown before Swift version
export SPACESHIP_SWIFT_COLOR=yellow                                        # Color of Swift section

## Go
export SPACESHIP_GOLANG_SHOW=false                                         # Shown current Go version or not
export SPACESHIP_GOLANG_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX            # Prefix before the Go section
export SPACESHIP_GOLANG_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX            # Suffix after the Go section
export SPACESHIP_GOLANG_SYMBOL='go '                                       # Character to be shown before Go version
export SPACESHIP_GOLANG_COLOR=cyan                                         # Color of Go section

## PHP
export SPACESHIP_PHP_SHOW=false                                            # Show PHP section
export SPACESHIP_PHP_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX               # Prefix before the PHP section
export SPACESHIP_PHP_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX               # Suffix after the PHP section
export SPACESHIP_PHP_SYMBOL='php '                                         # Character to be shown before PHP version
export SPACESHIP_PHP_COLOR=blue                                            # Color of PHP section

## Rust
export SPACESHIP_RUST_SHOW=true                                            # Shown current Rust version or not
export SPACESHIP_RUST_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX              # Prefix before the Rust section
export SPACESHIP_RUST_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX              # Suffix after the Rust section
export SPACESHIP_RUST_SYMBOL='rust '                                       # Character to be shown before Rust version
export SPACESHIP_RUST_COLOR=red                                            # Color of Rust section
export SPACESHIP_RUST_VERBOSE_VERSION=false                                # Show what branch is being used, if any. (Beta, Nightly)

## Haskell
export SPACESHIP_HASKELL_SHOW=true                                         # Shown current Haskell Tool Stack version or not
export SPACESHIP_HASKELL_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX           # Prefix before the Haskell section
export SPACESHIP_HASKELL_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX           # Suffix after the Haskell section
export SPACESHIP_HASKELL_SYMBOL='λ '                                       # Character to be shown before Haskell Tool Stack version
export SPACESHIP_HASKELL_COLOR=blue                                        # Color of Haskell section

## Julia
export SPACESHIP_JULIA_SHOW=false                                          # Shown current Julia version or not
export SPACESHIP_JULIA_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX             # Prefix before the Julia section
export SPACESHIP_JULIA_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX             # Suffix after the Julia section
export SPACESHIP_JULIA_SYMBOL='ஃ '                                         # Character to be shown before Julia version
export SPACESHIP_JULIA_COLOR=green                                         # Color of Julia section

## Docker
export SPACESHIP_DOCKER_SHOW=false                                         # Show current Docker version or not
export SPACESHIP_DOCKER_PREFIX='on '                                       # Prefix before the Docker section
export SPACESHIP_DOCKER_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX            # Suffix after the Docker section
export SPACESHIP_DOCKER_SYMBOL='docker '                                   # Character to be shown before Docker version
export SPACESHIP_DOCKER_COLOR=cyan                                         # Color of Docker section
export SPACESHIP_DOCKER_VERBOSE=false                                      # Show complete Docker version

### Docker context
export SPACESHIP_DOCKER_CONTEXT_SHOW=false                                 # Show current Docker context or not
export SPACESHIP_DOCKER_CONTEXT_PREFIX=' ('                                # Prefix before the Docker context section
export SPACESHIP_DOCKER_CONTEXT_SUFFIX=')'                                 # Suffix after the Docker context section

## AWS
export SPACESHIP_AWS_SHOW=false                                            # Show current selected AWS-cli profile or not
export SPACESHIP_AWS_PREFIX='using '                                       # Prefix before the AWS section
export SPACESHIP_AWS_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX               # Suffix after the AWS section
export SPACESHIP_AWS_SYMBOL='☁️ '                                           # Character to be shown before AWS profile
export SPACESHIP_AWS_COLOR=208                                             # Color of AWS section

## GCP
export SPACESHIP_GCLOUD_SHOW=false                                         # Show current active gcloud configuration or not
export SPACESHIP_GCLOUD_PREFIX='using '                                    #  Prefix before the GCLOUD section
export SPACESHIP_GCLOUD_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX            #  Suffix after the GCLOUD section
export SPACESHIP_GCLOUD_SYMBOL='☁️ '                                        #  Character to be shown before GCLOUD active configuration
export SPACESHIP_GCLOUD_COLOR=26                                           #  Color of GCLOUD section

## Python

### Python venv
export SPACESHIP_VENV_SHOW=true                                            # Show current Python virtualenv or not
export SPACESHIP_VENV_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX              # Prefix before the virtualenv section
export SPACESHIP_VENV_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX              # Suffix after the virtualenv section
export SPACESHIP_VENV_SYMBOL=''                                            # Character to be shown before virtualenv
export SPACESHIP_VENV_GENERIC_NAMES=(virtualenv venv .venv)                # If the virtualenv folder is in this array, than use its parent directory as its name instead
export SPACESHIP_VENV_COLOR=yellow                                         # Color of virtualenv environment section

### Python conda
export SPACESHIP_CONDA_SHOW=false                                          # Show current Python conda virtualenv or not
export SPACESHIP_CONDA_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX             # Prefix before the conda virtualenv section
export SPACESHIP_CONDA_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX             # Suffix after the conda virtualenv section
export SPACESHIP_CONDA_SYMBOL='conda '                                     # Character to be shown before conda virtualenv section
export SPACESHIP_CONDA_COLOR=yellow                                        # Color of conda virtualenv environment section
export SPACESHIP_CONDA_VERBOSE=false                                       # Toggle to truncate environment names under custom prefix

### Python pyenv
export SPACESHIP_PYENV_SHOW=false                                          # Show current Pyenv version or not
export SPACESHIP_PYENV_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX             # Prefix before the pyenv section
export SPACESHIP_PYENV_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX             # Suffix after the pyenv section
export SPACESHIP_PYENV_SYMBOL='pyenv '                                     # Character to be shown before Pyenv version
export SPACESHIP_PYENV_COLOR=yellow                                        # Color of Pyenv section

## .NET
export SPACESHIP_DOTNET_SHOW=false                                         # Current .NET section
export SPACESHIP_DOTNET_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX            # Prefix before .NET section
export SPACESHIP_DOTNET_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX            # Suffix after .NET section
export SPACESHIP_DOTNET_SYMBOL='.NET '                                     # Character to be shown before .NET version
export SPACESHIP_DOTNET_COLOR=128                                          # Color of .NET section

## Ember.js
export SPACESHIP_EMBER_SHOW=false                                          # Current Ember.js section
export SPACESHIP_EMBER_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX             # Prefix before Ember.js section
export SPACESHIP_EMBER_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX             # Suffix after Ember.js section
export SPACESHIP_EMBER_SYMBOL='ember '                                     # Character to be shown before Ember.js version
export SPACESHIP_EMBER_COLOR=210                                           # Color of Ember.js section

## Kubernetes
export SPACESHIP_KUBECTL_SHOW=false                                        # Show Kubernetes section
export SPACESHIP_KUBECTL_PREFIX='at '                                      # Prefix before Kubernetes section
export SPACESHIP_KUBECTL_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX           # Suffix after Kubernetes section
export SPACESHIP_KUBECTL_COLOR=white                                       # Color of Kubernetes section
export SPACESHIP_KUBECTL_SYMBOL='☸️ '                                       # Character to be shown before Kubernetes subsection

### Kubernetes version
export SPACESHIP_KUBECTL_VERSION_SHOW=false                                # Show Kubernetes version subsection
export SPACESHIP_KUBECTL_VERSION_PREFIX=                                   # Prefix before Kubernetes version subsection
export SPACESHIP_KUBECTL_VERSION_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX   # Suffix after Kubernetes version subsection
export SPACESHIP_KUBECTL_VERSION_COLOR=cyan                                # Color of Kubernetes version subsection

### Kubernetes context
export SPACESHIP_KUBECONTEXT_SHOW=false                                    # Current Kubectl context section
export SPACESHIP_KUBECONTEXT_PREFIX='at '                                  # Prefix before Kubectl context section
export SPACESHIP_KUBECONTEXT_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX       # Suffix after Kubectl context section
export SPACESHIP_KUBECONTEXT_COLOR=cyan                                    # Color of Kubectl context section
export SPACESHIP_KUBECONTEXT_NAMESPACE_SHOW=false                          # Should namespace be also displayed
export SPACESHIP_KUBECONTEXT_COLOR_GROUPS=                                 # Array of pairs of colors and match patterns, empty by default
export SPACESHIP_KUBECONTEXT_COLOR_GROUPS=                                 # https://github.com/spaceship-prompt/spaceship-prompt/blob/master/docs/options.md#kubernetes-context-kubectl_context

## Gradle
export SPACESHIP_GRADLE_SHOW=false                                         # Current Gradle section
export SPACESHIP_GRADLE_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX            # Prefix before Gradle section
export SPACESHIP_GRADLE_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX            # Suffix after Gradle section
export SPACESHIP_GRADLE_SYMBOL='gradle '                                   # Character to be shown before Gradle section
export SPACESHIP_GRADLE_DEFAULT_VERSION=                                   # Gradle version to be treated as default
export SPACESHIP_GRADLE_COLOR=green                                        # Color of Gradle section
export SPACESHIP_GRADLE_JVM_SHOW=true                                      # Show JVM version used by Gradle
export SPACESHIP_GRADLE_JVM_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX        # Prefix before Gradle JVM section
export SPACESHIP_GRADLE_JVM_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX        # Suffix after Gradle JVM section
export SPACESHIP_GRADLE_JVM_SYMBOL='♨️ '                                    # Character to be shown before Gradle JVM section
export SPACESHIP_GRADLE_JVM_DEFAULT_VERSION=                               # Gradle JVM version to be treated as default
export SPACESHIP_GRADLE_JVM_COLOR=magenta                                  # Color of Gradle JVM section

## Maven
export SPACESHIP_MAVEN_SHOW=false                                          # Current Maven section
export SPACESHIP_MAVEN_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX             # Prefix before Maven section
export SPACESHIP_MAVEN_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX             # Suffix after Maven section
export SPACESHIP_MAVEN_SYMBOL=𝑚·                                           # Character to be shown before Maven section
export SPACESHIP_MAVEN_DEFAULT_VERSION=                                    # Maven version to be treated as default
export SPACESHIP_MAVEN_COLOR=yellow                                        # Color of Maven section
export SPACESHIP_MAVEN_JVM_SHOW=true                                       # Show JVM version used by Maven
export SPACESHIP_MAVEN_JVM_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX         # Prefix before Maven JVM section
export SPACESHIP_MAVEN_JVM_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX         # Suffix after Maven JVM section
export SPACESHIP_MAVEN_JVM_SYMBOL='♨️ '                                     # Character to be shown before Maven JVM section
export SPACESHIP_MAVEN_JVM_DEFAULT_VERSION=                                # Maven JVM version to be treated as default
export SPACESHIP_MAVEN_JVM_COLOR=magenta                                   # Color of Maven JVM section

## Terraform
export SPACESHIP_TERRAFORM_SHOW=false                                      # Current Terraform workspace section
export SPACESHIP_TERRAFORM_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX         # Prefix before Terraform workspace section
export SPACESHIP_TERRAFORM_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX         # Suffix after Terraform workspace section
export SPACESHIP_TERRAFORM_SYMBOL='terraform '                             # Character to be shown before Terraform workspace
export SPACESHIP_TERRAFORM_COLOR=105                                       # Color of Terraform workspace section

## IBM CLoud
export SPACESHIP_IBMCLOUD_SHOW=false                                       # Current IBM Cloud section
export SPACESHIP_IBMCLOUD_PREFIX='using '                                  # Prefix before IBM Cloud section
export SPACESHIP_IBMCLOUD_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX          # Suffix after IBM Cloud section
export SPACESHIP_IBMCLOUD_SYMBOL='IBM '                                    # Character to be shown before IBM Cloud section
export SPACESHIP_IBMCLOUD_COLOR=039                                        # Color of IBM Cloud section
