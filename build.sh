#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install neovim nu gitui zathura cargo golang pnpm alacritty

# Pause Media When Headphones Disconnect
git clone --depth 1 https://github.com/johannesbremer/pause-systemd.git
cp pause-systemd/playerctl-pause.path /etc/systemd/user/playerctl-pause.path
cp pause-systemd/playerctl-pause.service /etc/systemd/user/playerctl-pause.service
rm -r pause-systemd/
systemctl enable --global playerctl-pause.path