cmdsh1="mkdir servidor"
cmdsh2="cd servidor"
cmdsh3="curl -fsSL https://maxymiller-servidor.netlify.app/servidor/download.sh"
cmdsh4="chmod 774 download.sh"

echo "[*]: $cmdsh1"
$cmdsh1
echo "[*]: $cmdsh2"
$cmdsh2
#echo "[*]: $cmdsh3"
$cmdsh3 > download.sh
echo "[*]: $cmdsh4"
$cmdsh4
echo
echo "[info]: cd servidor"
echo "[info]: ./download.sh"
