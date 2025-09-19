# filebrowser.sh <file> <ip> <door>
help="echo filebrowser.sh <dir data> <ip> <door> <log>"
filebrowserdata="$1"
filebrowserip="$2"
filebrowserdoor="$3"
filebrowserlog="$4/filebrowser.log"
servidorhome="$5"
servidorload="$servidorhome/maxy/shell/load.sh"
if [ "$1" != "" ]; then
	if [ "$2" != "" ]; then
		if [ "$3" != "" ]; then
  			if [ "$4" != "" ]; then
	 			filebrowseron=on
	 			cd "$filebrowserdata"
				while [ "$filebrowseron" = "on" ]; do
         			echo >> "$filebrowserlog"
			 		echo "[info]: filebrowser online" >> "$filebrowserlog"
					filebrowser -a $filebrowserip -p $filebrowserdoor >> "$filebrowserlog"
					#echo "1: $filebrowserdata 2: $filebrowserip 3: $filebrowserdoor"
	 				echo "[error]: filebrowser offline" >> "$filebrowserlog"
					sleep 3
	 				filebrowseron=$("$servidorload" "filebrowser" "$servidorhome")
				done
			else
				$help
   			fi
		else
			$help
		fi
	else
		$help
	fi
else
	$help
fi
