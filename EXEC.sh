# Run su first
sudo usermod -aG sudo alexkca
sudo apt update && sudo apt upgrade

# build-essential
sudo apt install -y build-essential

# neovim wl-clipboard
sudo apt install -y neovim wl-clipboard
mkdir ~/.config/nvim && cp nvim/init.vim ~/.config/nvim/init.vim

# githubcli
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# TODO
# Tap to Click
  # https://unix.stackexchange.com/questions/337008/activate-tap-to-click-on-touchpad
  # https://askubuntu.com/questions/403113/how-do-you-enable-tap-to-click-via-command-line
# github ssh
# firefox addons
# konsole settings and profiles
# bismuth
# Flat mouse
# Dark theme
# Remove hot corner
# Add virtual desktops

echo 'Run systemctl reboot when ready\n'
# systemctl reboot
