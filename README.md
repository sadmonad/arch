# arch
An Ansible playbook to setup my Arch &lt;3

## Run
```sh
cd arch
virtualenv venv && source venv/bin/activate
pip install -r requirements.txt
touch host
echo '[local]\n arch ansible_host=192.168.3.2' > host
source sandbox.sh
up && run
```
