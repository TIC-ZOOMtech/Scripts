# Configurando o Windows 11 sem contas microsoft

<!-- Para acessar sem rede no w11 -->

Comando necessario para realização das configurações iniciais do windows 11 sem a necessidade de logar em contas microsoft.

### 📄 1
Segue a tela inicial e pressiona simultaneamente as teclas [SHIFT] + [F10] para abrir a tela do Prompt de comando.

### 📄 2
Em seguida digite o comando abaixo e pressione [ENTER]

```
  oobe\bypassnro
```

### 📄 3
Apos a execução do comando acima, o computador será reiniciado retornando para a tela de instalação do Sistema Operacional e poderá seguir normalmente e até a tela de selecionar a rede que será conectada, logo abaixo terá uma opção "não conectar a internet" e assim seguir a configuração do perfil do usuario normalmente.

OBS: Essa opção só estará disponivel caso não tenha conectado a alguma rede.

<!-- Visualiza redes -->
--------------------------

### 📃 2.1
Caso tenha conectado a alguma rede será necessario acessar o prompt de comando novamente usando o "[📄1](https://github.com/TIC-ZOOMtech/Scripts/edit/main/NoNetwork.md#passo-3)" para executar os comandos abaixo:

### 📃 2.2
Esse comando abaixo informa todas as redes Wifi salvas no dispositivo.

```
  netsh wlan show profiles
```

### 📃 2.3
<!-- Remove redes -->
Esse comando abaixo remove a rede Wifi informada no dispositivo.

```
  netsh wlan delete profile name=”NOME_DA_REDE“
```
Após remover a rede poderá seguir as etapas de configuração do perfil normalmente
