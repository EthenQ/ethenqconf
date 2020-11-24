#/bin/bash
PGRDIR=$(cd $(dirname $0); pwd)

[[ -f ~/.tmux.conf ]] && mv ~/.tmux.conf ~/.tmux.conf.ethenq && cp ${PGRDIR}/.tmux.conf ~
[[ -f ~/.zshrc ]] && mv ~/.zshrc ~/.zshrc.ethenq && cp ${PGRDIR}/.zshrc ~
[[ -f ~/.zsh.env ]] && mv ~/.zsh.env ~/.zsh.env.ethenq && cp ${PGRDIR}/.zsh.env ~
[[ -f ~/.zsh.alias ]] && mv ~/.zsh.alias ~/.zsh.alias.ethenq && cp ${PGRDIR}/.zsh.alias ~
[[ -d ~/.config/kitty ]] && mv ~/.config/kitty ~/.config/kitty.ethenq && cp -r ${PGRDIR}/.config/kitty ~/.config/
