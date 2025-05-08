.POSIX:
.PHONY: *
.EXPORT_ALL_VARIABLES:


# deploy system  external smoke-test post-install clean
default: cluster

cluster:
	ansible-playbook \
    		playbooks/site.yml \
    		-i ../inventory.yml


reset:
	ansible-playbook \
    		playbooks/reset.yml \
    		-i ../inventory.yml
