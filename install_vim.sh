#!/bin/sh

#Директория для временных файлов плагинов скаченных с git

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

#Удалить старую конфигурацию
rm -f ~/.vimrc

echo "Установка нового config файла"

#Закинуть новую конфигурацию
cp ./vimrc ~/.vimrc && \
	echo "Ok"

ls ~/.vim/bundle/Vundle.vim > /dev/null 2>&1
#Проверка, есть ли уже Vundle
if [ $? != 0 ];then
	echo "Установка плагина Vundle"
	#Директория для плагина Vubdle
	mkdir -p  ~/.vim/bundle/

	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null 2>&1 && \
	echo "Ok"
else
	echo "Плагин Vundle уже установлен"
fi




echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

