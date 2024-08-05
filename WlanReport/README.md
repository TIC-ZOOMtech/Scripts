# Relatorio Wireless

### 📄 1 Abrindo prompt
Pressione a tecla [WINDOWS] e digite cmd e execute como administrador

### 📄 2 Execução de comando
Após isso digite o comando abaixo:

```
netsh wlan show wlanreport
```
A saida do script informa que gerou o arquivo "wlan-report-latest.html" no diretorio diretorio "C:\ProgramData\Microsoft\Windows\WlanReport\" nesse mesmo diretorio foram gerados 4 arquivos irei explicar superficialmente sobre eles abaixo:

### 📄 3 Explicando arquivos
- [wlan-report-2024-08-01.html](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-2024-08-01.html) - Esse é um backup do arquivo wlan-report-latest.html com a data.
- [wlan-report-latest.html](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest.html) - Esse é o arquivo atual apresentando o relatorio completo das conexões wireless do dispositivo  
- [wlan-report-latest.xml](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest.xml) - Esse é o arquivo xml que apresenta a estrutura de dados do arquivo "wlan-report-latest.html".
- [wlan-report-latest.cab](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest/wlan-report-latest.md) - Esse é o diretorio do arquivo compactado usado por sistema, é onde contem os dados brutos mostrado no relatorio é um wlan-report-latest.html
