function up(){
  vagrant up --provider=virtualbox
}

function run(){
  ansible-playbook -i local site.yml -e 'env=arch' \
    --private-key=.vagrant/machines/arch/virtualbox/private_key \
    --user=vagrant --ssh-common-args='-o StrictHostKeyChecking=no'
}

function login(){
  vagrant ssh
}

function clear(){
  vagrant destroy
}

