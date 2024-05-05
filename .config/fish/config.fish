export XDG_CONFIG_HOME="$HOME/.config"
export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

set fish_greeting ""
set -gx LANG "en_US.utf-8"
set -gx PATH /opt/homebrew/bin $PATH
set -gx PNPM_HOME "/Users/cihan/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PATH $BUN_INSTALL/bin $PATH
set -gx PATH $HOME/.bun/bin $PATH
set -gx PATH $HOME/go/bin $PATH
set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $HOME/.rbenv/bin $PATH
set -gx PATH $HOME/.pyenv/bin $PATH
set -gx PATH /opt/homebrew/opt/coreutils/libexec/gnubin $PATH

rbenv init - | source
pyenv init - | source

# prompt
function fish_prompt
echo -n (set_color afafd7)''[(prompt_pwd)]
echo -n (set_color 5faf87)'$ '

# switch (uname)
# case Linux
#     echo -n 'linux'
# case Darwin
#     echo -n 'darwin'
# case '*'
#     echo Hi, stranger!
# end
end

function fish_right_prompt
end

# aliases
alias macroot 'sudo su -'
alias alzheimer 'cat ~/.config/fish/config.fish --highlight-line 30:59'
alias fport 'sudo lsof -i '
alias kport 'kill -9'
alias npkill 'npx npkill'
alias nversion 'set --universal nvm_default_version'
alias rversion 'rbenv global'
alias pversion 'pyenv global'
alias dsd 'find . -name .DS_Store -delete'
alias vim 'nvim'
alias cat 'bat'
alias simlist 'xcrun simctl list'
alias simtor 'open -a Simulator --args -CurrentDeviceUDID'
alias btk 'sudo pkill bluetoothd'
alias stnew 'shopify theme push -u -t'
alias stdev 'shopify theme dev --port='
alias server 'python -m http.server --bind 127.0.0.1'


function dkcopy
  docker cp $argv[1]:$argv[2] $argv[3]
end

function dkpaste
  docker cp $argv[1] $argv[2]:$argv[3]
end

function zipper
  zip -r $argv[1] $argv[2] -x '**/.*' -x '**/__MACOSX'
end

# custom colors
set fish_color_command 5fffaf
set fish_color_autosuggestion d7d7d7
set fish_color_error ff5f5f
set fish_color_param afafaf
set fish_color_search_match --background=0000ff
set fish_color_operator 5fffaf
set fish_color_end 5fffaf
set fish_color_escape 5fffaf
set fish_pager_color_description 808000
set fish_pager_color_progress 008000
set fish_pager_color_prefix 5fffaf
