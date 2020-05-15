#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -e /home/moriger/.nix-profile/etc/profile.d/nix.sh ]; then . /home/moriger/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
alias ts = 'date +%Y-%M-%d+%H:%m:%S'
