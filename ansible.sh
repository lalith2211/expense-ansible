role=$1

ansible-playbook -i $role-$env.vsldo.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 ansible.yml -e role=$role -e env=$env