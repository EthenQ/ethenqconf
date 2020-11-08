#/bin/bash
PGRDIR=$(cd $(dirname $0); pwd)

[[ -f "~/.tmux.conf" ]] && cp ~/.tmux.conf ${PGRDIR}/.tmux.conf
[[ -f "~/.zshrc" ]] && cp ~/.zshrc ${PGRDIR}/.zshrc
[[ -f "~/.zsh.env" ]] && cp ~/.zsh.env ${PGRDIR}/.zsh.env
[[ -f "~/.zsh.alias" ]] && cp ~/.zsh.alias ${PGRDIR}/.zsh.alias
[[ -d "~/.config/kitty" ]] && cp -r ~/.config/kitty ${PGRDIR}/
