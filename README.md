# My Neovim, Tmux and Alacritty Dotfiles!
### I am using lazy.nvim for package management
copy this repository in ```~/.config/nvim/"```

### Tmux:
```
# at ~/.tmux.conf
# do Alt+F + I to install plugins after downloading tpm
# do Alt+F + r to resource this file.

unbind r
bind r source-file ~/.tmux.conf

unbind C-b

set -g prefix M-f
set -g history-limit 10000
set -g mouse on

bind-key h select-pane -L
bind-key l select-pane -R
bind-key j select-pane -D
bind-key k select-pane -U

bind '\' split-window -h
bind '-' split-window -v

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'dracula/tmux'
# List end

set -g @dracula-show-powerline true
set -g @dracula-fixed-location "Moscow"
set -g @dracula-plugins "battery weather"
set -g @dracula-show-flags true
set -g @dracula-show-left-icon ""
set -g @dracula-show-left-sep 
set -g @dracula-show-right-sep 
set -g @dracula-border-contrast true
set -g @dracula-show-empty-plugins false
set -g @dracula-battery-label "Battery"
set -g @dracula-show-fahrenheit false
set -g @dracula-fixed-location "Moscow"

set -g status-position top

run -b '~/.tmux/plugins/tpm/tpm'
```

### Alacritty:
```toml
# ~/.config/alacritty/alacritty.toml
[font]
size = 14.0

[font.normal]
family = "Hack Nerd Font"
style = "Regular"

[font.bold]
family = "Hack Nerd Font"
style = "Bold"

[font.italic]
family = "Hack Nerd Font"
style = "Italic"

[scrolling]
history = 10000
multiplier = 3

[window.class]
general = "Alacritty"
instance = "Alacritty"

[window.padding]
x = 5
y = 5

[shell]
program = "/usr/bin/fish"
```
