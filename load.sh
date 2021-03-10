#!/bin/bash

sudo apt update
sudo apt install curl

if [ -f ~/.vim/autoload/plug.vim ]; then
  echo -e "\n\nVim-Plug já está instalado"
else
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo -e "\n\nVim-Plug foi instalado"
fi

if [ -f ~/.vimrc ]; then
  echo -e "\nArquivo \".vimrc\" já está linkado"
else
  ln -s ~/.my-vim-config/.vimrc ~/.vimrc
  echo -e "\nArquivo \".vimrc\" foi linkado"
fi

vim +PlugInstall +qall
echo -e "\nPlugins instalado"

echo -e "\nInstalando plugins COC..."
vim "+CocInstall coc-tsserver coc-prettier coc-eslint coc-json -sync" +qall
echo -e "Plugins COC instalados!"

if [ -f ~/.vim/coc-settings.json ]; then
  echo -e "\nArquivo \"coc-settings.json\" já está linkado"
else
  ln -s ~/.my-vim-config/coc-settings.json ~/.vim/coc-settings.json
  echo -e "\nArquivo \"coc-settings.json\" foi linkado"
fi

