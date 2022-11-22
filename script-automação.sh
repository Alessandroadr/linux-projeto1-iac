 #!/bin/bash

echo "Iniciando a criação de diretórios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Finalizado a criação de diretórios!"

echo "Iniciando a criação de grupos.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Finalizado a criação de grupos!"

echo "Iniciando a criação de usuários.."

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd 1q2w3e) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd 1q2w3e) -G GRP_ADM
useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd 1q2w3e) -G GRP_ADM

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd 1q2w3e) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd 1q2w3e) -G GRP_VEN
useradd roberto -m -c "roberto" -s /bin/bash -p $(openssl passwd 1q2w3e) -G GRP_VEN

useradd josefina -m -c "josefina" -s /bin/bash -p $(openssl passwd 1q2w3e) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd 1q2w3e) -G GRP_SEC
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd 1q2w3e) -G GRP_SEC

echo "Finalizado a criação de usuários!"

echo "Iniciando permissionamento de pastas/diretórios.."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 

echo "Finalização permissionamento de pastas/diretórios!"

echo "Processos concluídos......"
