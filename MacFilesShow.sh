#!/bin/sh
echo '显示隐藏文件？ Y (yes) or N (not) ?'
read  showFile
if [ $showFile = 'Y' -o $showFile = 'y' ]
 then
	#显示 隐藏文件
	`defaults write com.apple.finder AppleShowAllFiles -bool true`
	`killall Finder`
elif [ $showFile = 'N' -o $showFile = 'n' ]
	then
	#隐藏 隐藏文件
	`defaults write com.apple.finder AppleShowAllFiles -bool false`
	`killall Finder`
else 
	echo "输入的命令错误 请输入 Y(or y) N(or n)"
fi










