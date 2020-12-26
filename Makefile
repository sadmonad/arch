SHELL := /bin/bash
VENV=./venv/bin
VAGRANT_PRIV_KEY_PATH=.vagrant/machines/arch/virtualbox/private_key
VAGRANT_USER=vagrant
VAGRANT_IP=192.168.3.2

run: install prepare up
	$(VENV)/ansible-playbook -i local site.yml -e 'env=arch' \
    --private-key=$(VAGRANT_PRIV_KEY_PATH) \
    --user=$(VAGRANT_USER) --ssh-common-args='-o StrictHostKeyChecking=no'
install:
	python3 -m venv venv
	$(VENV)/pip install -r requirements.txt
prepare:
	touch host
	printf "[local]\narch ansible_host=$(VAGRANT_IP)" > local
up:
	vagrant up --provider=virtualbox
login:
	vagrant ssh -c 'sudo su'
clean:
	vagrant destroy -f
	rm -rf host venv/
