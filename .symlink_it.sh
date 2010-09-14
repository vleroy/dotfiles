#!/usr/bin/env bash

function relink() {
  rm -ri $1
  ln -sn $2 $1
}

cd `dirname $0`
DOTFILES=$PWD

cd

relink .bin              $DOTFILES/bin
relink .conkyrc          $DOTFILES/conkyrc
relink .conkystatusbarrc $DOTFILES/conkystatusbarrc
relink .dzen             $DOTFILES/dzen
relink .mplayer          $DOTFILES/mplayer
relink .vimrc            $DOTFILES/vimrc
relink .xinitrc          $DOTFILES/xinitrc
relink .xmobarrc         $DOTFILES/xmobarrc
relink .Xresources       $DOTFILES/Xresources
relink .zsh              $DOTFILES/zsh
relink .zshrc            $DOTFILES/zshrc

mkdir -p .xmonad
relink .xmonad/xmonad.hs $DOTFILES/xmonad.hs

# quodlibet plugins : not the ideal way to handle my changes...
mkdir -p .quodlibet/plugins/{editing,songsmenu}/
relink .quodlibet/plugins/editing/iconv.py      $DOTFILES/quodlibet/plugins/editing/iconv.py
relink .quodlibet/plugins/songsmenu/openwith.py $DOTFILES/quodlibet/plugins/songsmenu/openwith.py