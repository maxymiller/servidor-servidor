filerun="config/config.txt"
filerun2="config/run.sh"
maxyt="$(cat maxy/t.txt)"
if [ "$USER" = "root" ]; then
	if [ -e "$filerun" ]; then
		if [ -e "$filerun2" ]; then
			echo "[cp]: $filerun run.sh"
			cp "$filerun" "run.sh"
			echo >> run.sh
			echo "[cat]: $filerun2"
			cat "$filerun2" >> run.sh
   			echo cd "$maxyt$PWD$maxyt" > boot.sh
			echo "$maxyt$PWD/run.sh$maxyt" >> boot.sh
			echo "[backup]: config/* backup"
			cp -r config/* backup
			echo "[done]: ok"
		else
			echo "[error]: file [$filerun2] download (sudo ./download)"
		fi
	else
		echo "[error]: file [$filerun] criar (sudo ./download)"
	fi
else
	echo "[error]: sudo"
	echo "[error]: root"
fi
