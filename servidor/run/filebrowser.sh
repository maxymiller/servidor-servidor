# filebrowser.sh <file> <ip> <door>
help="echo filebrowser.sh <dir data> <ip> <door> <log>"
filebrowserdata="$1"
filebrowserip="$2"
filebrowserdoor="$3"
filebrowserlog="$4"
if [ "$1" != "" ]; then
	if [ "$2" != "" ]; then
		if [ "$3" != "" ]; then
  			if [ "$4" != "" ]; then
				while [ "" = "" ]; do
				cd "$filebrowserdata"
					filebrowser -a $filebrowserip -p $filebrowserdoor > "$filebrowserlog/filebrowser.log"
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
else
	$help
fi
