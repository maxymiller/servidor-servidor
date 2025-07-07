if [ "$USER" = "root" ]; then
	if [ "$1" = "apt" ]; then
		echo "[$apt]: $up1"
		$apt $up1
		echo "[$apt]: $up2"
		$apt $up2
	fi
	if [ "$servidoronfilebrowser" = "on" ]; then
		./run/filebrowser.sh "$servidordatafilebrowser" "$servidoripfilebrowser" "$servidordoorfilebrowser" &
		#echo "1: $servidordatafilebrowser 2: $servidoripfilebrowser 3: $servidordoorfilebrowser"
	fi
else
	echo "[error]: sudo"
	echo "[error]: root"
fi
