create_id_rsa_ssh:
	cd playbook &&\
	chmod +x ./create_id_rsa_ssh.sh &&\
	./create_id_rsa_ssh.sh

deploy:
	cd playbook &&\
	ansible-playbook playbook.yaml

get_all_pods_example:
	kubectl --kubeconfig=./kubectl-config/kubeadminconfig get pods -o wide --all-namespaces