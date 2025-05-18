#!/bin/bash

echo "Instruções para executar os playbooks Ansible dos scripts Docker - (deve estar rodando dentro de /vagrant/ansible no ssh do ansible)"
echo
echo "- Provisionar o ansible:"
echo "   ansible-playbook -i inventory.ini playbook.yml"
echo
echo "- Listar containers Docker:"
echo "   ansible-playbook -i inventory.ini list_containers.yml"
echo
echo "- Mostrar logs de um container (passando variavel 'nginx-1'):"
echo "   ansible-playbook -i inventory.ini docker_log.yml --extra-vars "container_name=nginx-1""
echo
echo "- Mostrar estatísticas de containers Docker:"
echo "   ansible-playbook -i inventory.ini docker_stats.yml"
echo
echo "- Pausar um container (passando variavel 'nginx-1'):"
echo "   ansible-playbook -i inventory.ini pause_container.yml --extra-vars "container_name=nginx-1""
echo
echo "- Parar 3 containers (passando variaveis):"
echo "   ansible-playbook -i inventory.ini stop_containers.yml --extra-vars "container1=nginx-1 container2=nginx-2 container3=nginx-3""
echo
echo "- Remover todos os containers:"
echo "   ansible-playbook -i inventory.ini remove_all_containers.yml"
echo
echo "---------------------------------------------"
