role=$1

#ansible-playbook -i $role-$env.vsldo.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 ansible.yml -e role=$role -e env=$env

#ansible-playbook get-secrets.yml -e vault_token=$vault_token -e env=$env -e role=$role
#ansible-playbook -i $component-$env.vsldo.online, -e env=$env -e role_name=$role ansible.yml -e '@~/secrets.json' -e '@~/app.json'

ansible-playbook get-secrets.yml -e vault_token=$vault_token -e env=$env -e role=$role
ansible-playbook -i $role-$env.vsldo.online, -e env=$env -e role=$role ansible.yml -e '@~/secrets.json' -e '@~/app.json'
rm -f ~/secrets.json ~/app.json