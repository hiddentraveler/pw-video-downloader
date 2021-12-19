echo "physicswallah link to download video:"
read link
echo "name of the downloaded file:"
read name
time ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -i ${link:0:74}/hls/720/master.m3u8 -c:v copy -c:a copy $name.mp4
notify-send "Download complete"
