#!/bin/bash

echo "Criando diretoríos.."

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /sec

echo "Criando grupo de usuarios.."

groupadd GRP_ADM
groupadd GRP_VENDA
groupadd GRP_SEC

echo "Criando usuarios.."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDA
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Permissoes.."

chown root:GRP_ADM /adm
chown root:GRP_VENDA /vendas
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vendas
chmod 770 /sec

echo "Finalizado com sucesso!"