
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

	green " جاري تشغيل سورس 𓏺˛ 𝙒𝙃𝙄𝙎𝙆𝙀𝙔 𝙎𝙊𝙐𝙍𝘾𝙀 في وضعيه التشغيل التلقائي  ..."
	while true; do
lua ./bot/bot.lua
	red 'حدث خطا في 𓏺˛ 𝙒𝙃𝙄𝙎𝙆𝙀𝙔 𝙎𝙊𝙐𝙍𝘾𝙀 سوف يتم تشغيل البوت بعد ثواني'
sleep 9s
done
