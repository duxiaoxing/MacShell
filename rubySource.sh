# !/bin/sh
# rubyGems镜像

echo '淘宝镜像 T (taobao) or R (ruby) ?'
read  showFile
if [ $showFile = 'T' -o $showFile = 't' ]
 then
	# 淘宝镜像
	gem sources --add    https://ruby.taobao.org/
	gem sources --remove https://rubygems.org/
	gem sources -l
elif [ $showFile = 'R' -o $showFile = 'r' ]
	then
	# 官网镜像
	gem sources --add    https://rubygems.org/
	gem sources --remove https://ruby.taobao.org/
	gem sources -l
else 
	echo "输入的命令错误 请输入 T(or t) R(or r)"
fi
