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
