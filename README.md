*BEM VINDO*

link do web:
-
```
https://maxymiller-servidor.netlify.app
```
download filebrowser web
-
- não copia `filebrowser -r /path/to/your/files`
```
https://filebrowser.org/installation.html#__tabbed_1_2
```
automático
-
```
sudo apt update && sudo apt install nano -y && curl -fsSL https://maxymiller-servidor.netlify.app/download/download.sh | bash && cd servidor && sudo ./download.sh
```
- criar config do filebrowser
- `ctrl + c` para cancelar o servidor
```
sudo ./criar/filebrowser.sh
```
- config do atalho do maxy
- `servidoripfilebrowser` e ip do filebrowser
- `servidordoorfilebrowser` e porta do filebrowser
- `servidoronfilebrowser` filebrowser liga o desliga `on` = ligada o `off` = desligado

```
nano config/config.txt
``` 
- upgrade do atalho do maxy
- `boot.sh` e `run.sh` e config
- `boot.sh` e um atalho para boot automático
- `run.sh` executa o servidor
```
sudo ./upgrade-run.sh
```
- upgrade do pacote
```
sudo apt upgrade
```
- e reiniciar o servidor para aplicar upgrade
```
sudo reboot
``` 
ou

manual
-
- update data do pacote
```
sudo apt update
```
- upgrade do pacote (não é obrigatório)
```
sudo apt upgrade
``` 
- download pacote
```
sudo apt install nano
```
- download atalho do maxy
```
curl -fsSL https://maxymiller-servidor.netlify.app/download/download.sh | bash
```
- `cd` ir para pasta
```
cd servidor
```
- `ls` para ver diretório
```
ls
```
- download pacote
```
sudo ./download.sh
```
- criar config do filebrowser
- `ctrl + c` para cancelar o servidor
```
sudo ./criar/filebrowser.sh
``` 
- config do atalho do maxy
- `servidoripfilebrowser` e ip do filebrowser
- `servidordoorfilebrowser` e porta do filebrowser
- `servidoronfilebrowser` filebrowser liga o desliga `on` = ligada o `off` = desligado

```
nano config/config.txt
``` 
- upgrade do atalho do maxy
- `boot.sh` e `run.sh` e config
- `boot.sh` e um atalho para boot automático
- `run.sh` executa o servidor
```
sudo ./upgrade-run.sh
```
- atualizar o servidor caso você pulo etapa `upgrade do pacote`
```
sudo apt upgrade
```
- e reiniciar o servidor para aplicar upgrade
```
sudo reboot
``` 
 
desligar o servidor
-
- usar `top`, `htop`, `btop`, `bashtop` 
- usar `filter`
- `./run/filebrowser.sh <data> <ip> <porta> <log>`
- `filebrowser -a <ip> -p <porta>`
- ou `ps`, `fg`, `kill`
- `ps` ver tarefa
- `fg <pid ou nome>` i para Primeiro Plano
- `kill <pid>` terminar a tarefa

mais automático
-
- `listcurl/list.sh` download pacote
- `listcurl/done.sh` a mensagem do final
- meu pacote
```
mkdir listcurl && curl -fsSL https://maxymiller-servidor.netlify.app/listcurl/list.sh > listcurl/list.sh && curl -fsSL https://maxymiller-servidor.netlify.app/listcurl/done.sh > listcurl/done.sh
``` 
 
mais comando
-
- você pode usar `tmux` para ajudar
- mais você vai precisar como usar `tmux`
