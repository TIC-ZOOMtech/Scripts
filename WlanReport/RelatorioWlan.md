# Relatorio Wireless

### 📄 1
Pressione a tecla [WINDOWS] e digite cmd e execute como administrador

### 📄 2
Após isso digite o comando abaixo:

```
netsh wlan show wlanreport
```
A saida do script informa que gerou o arquivo "wlan-report-latest.html" no diretorio diretorio "C:\ProgramData\Microsoft\Windows\WlanReport\" nesse mesmo diretorio foram gerados 4 arquivos irei explicar superficialmente sobre eles abaixo:

- [wlan-report-2024-08-01.html](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-2024-08-01.html) - Esse é um backup do arquivo wlan-report-latest.html com a data.
- [wlan-report-latest.html](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest.html) - Esse é o arquivo atual apresentando o relatorio completo das conexões wireless do dispositivo  
- [wlan-report-latest.xml](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest.xml) - Esse é o arquivo xml que apresenta a estrutura de dados do arquivo "wlan-report-latest.html".
- [wlan-report-latest.cab](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest) - Esse é o diretorio do arquivo compactado usado por sistema, é onde contem os dados brutos mostrado no relatorio é um wlan-report-latest.html

Esse são os arquivos contidos no wlan-report-latest.cab:

Os arquivos de formato .etl são logs do sistemas
- [Wifi.etl](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest/Wifi.etl)
- [LwtNetLog.etl](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest/LwtNetLog.etl)
O arquivo .evtx são eventos do windows correlacionados ao relatorio
- [System.evtx](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest/System.evtx)

O ultimo relatorio gerado
- [wlan-report-latest.html](https://github.com/TIC-ZOOMtech/Scripts/blob/main/WlanReport/wlan-report-latest/wlan-report-latest.html)
<!--
  
  Arquivo responsavel por todos os eventos gerados referente as conexões wireless do relatorio
  - System.evtx
 Os arquivos com extensão ".etl" são arquivos de logs do windows, usado para coleta das informações do relatorio
   - Wifi.etl
  - LwtNetLog.etl
 -->
