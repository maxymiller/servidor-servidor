url="https://maxymiller-servidor.netlify.app"
home="$url/servidor"
config="$home/config"
run="$home/run"
criar="$home/criar"
valor="maxy/valor"
fsSL="-f#SL"

#home
echo "[*]: upgrade-run.sh"
curl $fsSL $home/upgrade-run.sh > upgrade-run.sh

#config
echo "[*]: dir config"
curl $fsSL $config/run.sh > config/run.sh

#criar
echo "[*]: dir criar"
curl $fsSL $criar/filebrowser.sh > criar/filebrowser.sh

#run
echo "[*]: dir run"
curl $fsSL $run/filebrowser.sh > run/filebrowser.sh

#maxy
echo "[*]: dir maxy"
curl $fsSL $home/maxy/t.txt > maxy/t.txt

#valor
echo "[*]: dir maxy/valor(1/4)"
curl $fsSL $home/$valor/servidordata.txt > $valor/servidordata.txt
echo "[*]: dir maxy/valor(2/4)"
curl $fsSL $home/$valor/servidordatafilebrowser.txt > $valor/servidordatafilebrowser.txt
echo "[*]: dir maxy/valor(3/4)"
curl $fsSL $home/$valor/servidorhome.txt > $valor/servidorhome.txt
echo "[*]: dir maxy/valor(4/4)"
curl $fsSL $home/$valor/servidorhomefilebrowser.txt > $valor/servidorhomefilebrowser.txt
echo "[download]: done"
