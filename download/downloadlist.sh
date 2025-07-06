url="https://maxymiller-servidor.netlify.app"
home="$url/servidor"
config="$home/config"
run="$home/run"
criar="$home/criar"
valor="maxy/valor"

#config
curl -fsSL $config/run.sh > config/run.sh

#criar
curl -fsSL $criar/filebrowser.sh > criar/filebrowser.sh

#run
curl -fsSL $run/filebrowser.sh > run/filebrowser.sh

#valor
curl -fsSL $home/$valor/servidordata.txt > $valor/servidordata.txt
curl -fsSL $home/$valor/servidordatafilebrowser.txt > $valor/servidordatafilebrowser.txt
curl -fsSL $home/$valor/servidorhome.txt > $valor/servidorhome.txt
curl -fsSL $home/$valor/servidorhomefilebrowser.txt > $valor/servidorhomefilebrowser.txt
