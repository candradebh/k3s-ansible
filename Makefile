.POSIX:

default: cluster

cluster:
	ansible-playbook playbooks/site.yml \
		-i ../inventory.yml


