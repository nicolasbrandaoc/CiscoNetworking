ASSISTA ESSE VÍDEO E SIGA O PASSO A PASSO: https://youtu.be/hcELXrUqCQc

1. Instalar o VM PLAYER - NON COMMERCIAL LICENSE
Download VM Player: https://my.vmware.com/en/web/vmware/free#desktop_end_user_computing/vmware_workstation_player/15_0
2. Instalar WinSCP
Download WinSCP: https://winscp.net/eng/download.php
3. Baixar o EVE-NG Community
Donwload EVE-NG Community https://drive.google.com/file/d/1E4US5xwCjj6BS79DCsdRPt_Fvo4xAaKa/view
4. Deploy the OVA file
5. Machine settings, mudar network card para NAT
6. Power on the machine
Username:root
Password:eve

7)Run the wizard
8) Update the machine
apt-get update
apt-get upgrade

1. Baixar OS
https://drive.google.com/drive/folders/1ORWpJOO-8B-tsQe95gnhEqzQ5vZl2CMm?usp=sharing
2. Instal OS com o WinSCP
CISCO IOS DYNAMIPS .IMAGE FILES, importar nesse destino: /opt/unetlab/addons/dynamips
CISCO IOU ou IOL FILES, importar nesse destino: /opt/unetlab/addons/iol/bin
3. SSH na maquina EVE e Instal Python license
    
    if config pnet0 para ver o ip address do eve-ng
    
    cd /opt/unetlab/addons/iol/bin/
    ls -l
    python2 [CiscoIOUKeygen.py](http://ciscoioukeygen.py/)
    Copiar o numero da licensa
    Alterar o arquivo IOURC no notepad e salvar novamente
    Importar esse arquivo para o EVE-NG
    
4. Fix permissions
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
5. Instalar o windows integration package
Windows Integration Pack: https://drive.google.com/open?id=1eAjS0mq1ff7wdxpsrhntM_JO0NsxPywi
6. Login no EVE-NG Web
Username:admin
Password:eve
7. Criar um LAB
8. Importar um lab