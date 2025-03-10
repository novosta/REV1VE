source /usr/local/payloads/lib/gui_lib.sh
showimage /usr/share/sh1mmer-assets/Logs.png

if [ -f /usr/local/payloads/movie_payload.tar ]; then
	echo "extracting movie_payload.tar"
	mkdir /tmp/movie_payload
	tar -xf /usr/local/payloads/movie_payload.tar -C /tmp/movie_payload
else
	echo "movie_payload.tar not found!" >&2
	exit 1
fi

for file in /tmp/movie_payload/*.png; do
	showimage "$file"
	sleep 0.03
done

rm -rf /tmp/movie_payload
