config="config/config.txt"
configdata="criar/data/filebrowser.txt"
maxyt="$(cat maxy/t.txt)"
servidorhomefilebrowser="$(cat maxy/valor/servidorhomefilebrowser.txt)"
servidordatafilebrowser="$(cat maxy/valor/servidordatafilebrowser.txt)"
if [ "$USER" = "root" ]; then
	if [ -e "$config" ]; then
		cp "$config" "$configdata"
		echo >> "$configdata"
		echo "cd $maxyt""$servidordatafilebrowser""$maxyt" >> "$configdata"
  		echo "[info]: ctrl + c"
		echo "filebrowser -r ""$maxyt""$servidorhomefilebrowser""$maxyt" >> "$configdata"
		chmod 774 "$configdata"
		./$configdata
	fi
else
	echo "[error]: sudo"
	echo "[error]: root"
fi
