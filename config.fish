fish_ssh_agent
set -x GPG_TTY (tty)
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

set -U fish_user_paths $HOME/.local/bin $fish_user_paths

set -U fish_user_paths $HOME/.config/composer/vendor/bin $fish_user_paths

set -U fish_user_paths $HOME/personal/wrk $fish_user_paths

#ALIASES
alias notes="cd ~/msys/notes/ && code ."
alias vim="nvim"
alias wifi="sudo systemctl restart NetworkManager.service"
alias fishconfig="vim ~/.config/fish/config.fish"
abbr l "exa -hgla --octal-permissions --color-scale"
abbr c "clear"
abbr cat "bat"
abbr df "duf -hide special"

#Development Aliases
#
#
#Docker
abbr dps "docker ps"
abbr phpcs "bin/phpcs --standard=PSR12"
abbr dc "sudo docker-compose -f"
abbr dx "docker exec -it "
abbr spec "bin/phpspec run"
abbr specd "bin/phpspec desc"
abbr cs "bin/phpcs --standard=PSR12"

#
#
#VPN
abbr msysvpn "sudo openvpn --config ~/msys/elagas.ovpn"


alias enable-fnkeys="echo 1 | sudo tee /sys/module/hid_apple/parameters/fnmode"
alias disable-fnkeys="echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode"
#
#
#PHP
abbr phpunit "vendor/bin/phpunit"
abbr phps "bin/phpspec run"
#
#
#GIT
abbr gst "git status"
abbr gc- "git checkout -"
abbr gpo "git pull origin"
abbr gfo "git fetch origin"
abbr gpsuo "git push --set-upstream origin" (git branch 2>/dev/null | sed -n '/\* /s///p')
abbr gpl "git pull origin" (git branch 2>/dev/null | sed -n '/\* /s///p')
abbr gcss "git commit -Ss"

starship init fish | source
