#!/usr/bin/env bash

set -e

IPS=$(terraform -chdir=terraform output -json instance_public_ips | jq -r '.[]')

i=1
echo "all:
  vars:
    ansible_python_interpreter: /usr/bin/python3
  children:
    webservers:
      hosts:" >ansible/inventory.yaml

for ip in $IPS; do
	echo "        web${i}:
          ansible_host: ${ip}
          ansible_user: ubuntu
          ansible_ssh_private_key_file: ~/.ssh/ansible_lab" >>ansible/inventory.yaml
	((i++))
done

echo "Generated ansible/inventory.yaml"
