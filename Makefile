create_ssh_key:
	ssh-keygen -b 2048 -t rsa -f ssh-key -q -N ""

test_deploy:
	vagrant up
	cd playbook && docker run --rm -it -v $(shell pwd)/playbook:/playbooks  -v $(shell pwd)/ssh-key:/playbooks/ssh-key -w /playbooks liveonit/nwtools ansible-playbook -i inventory.yml playbook.yml

kubectl_config:
	docker run --rm -it -v $(shell pwd):/playbooks -w /playbooks liveonit/nwtools ansible-playbook -i inventory.yml kubectl-get-config.yml

vagrant_tear_down:
	vagrant destroy -f

get_all_pods_example:
	kubectl --kubeconfig=./kubectl-config/kubeadminconfig get pods -o wide --all-namespaces
