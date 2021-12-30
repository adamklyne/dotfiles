!/bin/sh

cwd=$PWD
cd $HOME
ln -s $cwd/.zshrc .zshrc
ln -s $cwd/.tmux.conf .tmux.conf
ln -s $cwd/.gitignore .gitignore
cd $cwd
