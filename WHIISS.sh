
THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

install() {
		sudo apt-get update -y
		sudo apt-get upgrade -y
		sudo apt-get install lua5.1 lua-socket lua-sec redis-server curl -y
		sudo apt-get install libreadline-dev libssl-dev lua5.2 luarocks liblua5.2-dev curl libcurl4-gnutls-dev -y
		git clone git://github.com/luarocks/luarocks.git
		cd luarocks
		./configure --lua-version=5.2
		make build
		sudo make install
		sudo luarocks install Lua-cURL
		sudo luarocks install oauth
		sudo luarocks install redis-lua
		sudo luarocks install lua-cjson
		sudo luarocks install ansicolors
		sudo luarocks install serpent
		cd ..
}


red() {
  printf '\e[1;31m%s\n\e[0;39;49m' "$@"
}
green() {
  printf '\e[1;32m%s\n\e[0;39;49m' "$@"
}
white() {
  printf '\e[1;37m%s\n\e[0;39;49m' "$@"
}
update() {
	git pull
}

if [ "$1" = "install" ]; then
	install
elif [ "$1" = "update" ]; then
	update
	exit 1
else
green " جاري تشغيل سورس 𓏺˛ 𝙒𝙃𝙄𝙎𝙆𝙀𝙔 𝙎𝙊𝙐𝙍𝘾𝙀   ...	"
lua ./bot/bot.lua
fi
