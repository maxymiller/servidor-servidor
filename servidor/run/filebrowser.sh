# filebrowser.sh <file> <ip> <door>
help="echo filebrowser.sh <dir data> <ip> <door>"
filebrowserdata="$1"
filebrowserip="$2"
filebrowserdoor="$3"
if [ "$1" != "" ]; then
	if [ "$2" != "" ]; then
		if [ "$3" != "" ]; then
			while [ "" = "" ]; do
			cd "$filebrowserdata"
				filebrowser -a $filebrowserip -p $filebrowserdoor
				#echo "1: $filebrowserdata 2: $filebrowserip 3: $filebrowserdoor"
				sleep 3
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
