# ANSIBLE

## Este é um trabalho desenvolvido para a matéria de Computação Orientada a Serviços da UNITINS

Aqui estão os objetivos do trabalho:
1. Criar uma VM que será a máquina utilizada para instalação do Docker e outra VM que será a máquina do Ansible (ou pode rodar o ansible no seu próprio Host).
2. Instalar o Docker e dependências pelo Ansible.
3. Baixar imagem do Docker Hub para criação do containers.
4. Criar e configurar 08 Containers com servidores web (Apache ou Nginx), com a página inicial personalizada em cada um deles utilizando Ansible. Todos os Container devem ter redirecionamento de portas, para possibilitar acesso de fora da VM.
5. Lista todos os Containers via Ansible.
6. Mostrar a estatística de uso de todos os Containers via Ansible.
7. Mostrar o log em tempo real de um Container via Ansible.
8. Pausar 01 Container via Ansible.
9. Parar 03 Container via Ansible.
10. Excluir todos os Containers via Ansible.

---

Para este trabalho, estarei utilizando a ferramenta Vagrant para realizar a automação da criação das maquinas virtuais. No arquivos disponibilizados neste repositorio, há o Vagrantfile, deve-se abrir a pasta com ele no terminal e rodar:

```
vagrant up
```

Este comando irá rodar as duas maquinas virtuais, já instalando o ansible em uma e deixando a outra pronta para utilizar o Docker.


Agora, deve-se acessar a maquina virtual do Ansible pelo ssh:

```
vagrant ssh ansible
```

Agora, com acesso a maquina através do ssh, devemos acessar a pasta em que se encontram os playbooks. Eles já estão criados, configurados na pasta do vagrant, a pasta com os arquivos está sincronizada para ser exibida no ansible, basta rodar.

```
cd /vagrant/ansible
```

Agora, deve-se rodar o comando para realizar o provisionamento do ansible, gerando a configuração do docker e a geração dos containers.
*nesta parte tive alguns problemas quanto a chave privada do docker para realizar a conexão entre as VMs que está sendo referenciada no inventory.ini do ansible, portanto, caso ocorra algum problema relacionado a isso, deve-se copiar a chave do docker para o ansible:
```
cp /vagrant/.vagrant/machines/docker/virtualbox/private_key /home/vagrant/docker_key
```
