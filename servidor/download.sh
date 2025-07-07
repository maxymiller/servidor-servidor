if [ "$USER" = "root" ]; then
	
	echo "[*]: mkdir"
	mkdir -p config servidor/filebrowser/users data-servidor-config/filebrowser backup criar/data run maxy/valor log listcurl
 	null="maxy/null"
	downloadurl="https://maxymiller-servidor.netlify.app"
	downloadlist="listcurl/list.sh"
 	downloaddone="listcurl/done.sh"
  	if [ -e "$downloadlist" ]; then
		echo > "$null"
	else
   		echo "curl -f#SL $downloadurl/$downloadlist | bash" > "$downloadlist"
     	fi
      	if [ -e "$downloaddone" ]; then
		echo > "$null"
       	else
		echo "curl -f#SL $downloadurl/$downloaddone | bash" > "$downloaddone"
       	fi
  	chmod 774 $downloadlist $downloaddone
	in=''
	while [ "$in" != "n" ]; do
		echo "[download]: file do maxymiller (Y/n)"
		read in
		if [ "$in" = "" ]; then
			in="y"
		fi
		if [ "$in" = "y" ]; then
			./$downloadlist
			in="n"
		fi
	done

	config="config/config.txt"
	maxyt="$(cat maxy/t.txt)"
	servidorhome="$(cat maxy/valor/servidorhome.txt)"
	servidordata="$(cat maxy/valor/servidordata.txt)"


	if [ -e "$config" ]; then
		echo "[error]: o file ja existe [$config]"
	else
		# config
		echo "[*]: config"
		echo "# servidor home" > "$config"
		echo "servidorhome=""$maxyt""$PWD""$maxyt" >> "$config"

		echo "" >> "$config"
		echo "# servidor data" >> "$config"
		echo "servidordata=""$maxyt""$PWD/data-servidor-config""$maxyt" >> "$config"

		echo "" >> "$config"
  		echo "# servidor log" >> "$config"
    		echo "servidorlog=$maxyt""$servidorhome/log""$maxyt" >> "$config"

		# filebrowser
		echo "" >> "$config"
		echo "# servidor filebrowser" >> "$config"
		echo "servidorhomefilebrowser=$maxyt""$servidorhome/servidor/filebrowser""$maxyt" >> "$config"

		echo "" >> "$config"
		echo "# servidor filebrowser data" >> "$config"
		echo "servidordatafilebrowser=$maxyt""$servidordata/filebrowser""$maxyt" >> "$config"

		echo "" >> "$config"
		echo "# ip door" >> "$config"
		echo "#servidoripfilebrowser=x.x.x.x" >> "$config"
		echo "#servidordoorfilebrowser=x" >> "$config"
		echo "servidoronfilebrowser=off" >> "$config"

		# apt
		echo "" >> "$config"
		echo "# apt" >> "$config"
		echo "apt=$maxyt""apt""$maxyt" >> "$config"
		echo "up1=$maxyt""update""$maxyt" >> "$config"
		echo "up2=$maxyt""upgrade""$maxyt" >> "$config"
	fi

	# chmod 774
	chmod 774 run/filebrowser.sh
	if [ -e "run.sh" ]; then
		echo > "$null"
	else
		echo "echo ""$maxyt""[nada]: sudo ./upgrade-run.sh""$maxyt" > "run.sh"
	fi
	if [ -e "boot.sh" ]; then
		echo > "$null"
	else
		echo "echo ""$maxyt""[nada]: sudo ./upgrade-run.sh""$maxyt" > "boot.sh"
	fi
	chmod 774 run.sh
	chmod 774 upgrade-run.sh
	chmod 774 boot.sh
	chmod 774 criar/filebrowser.sh

	# fim
  	echo "[done]: ok"
   	echo
	./$downloaddone
else
	echo "[error]: sudo download.sh"
	echo "[user]: você não e root"
fi
