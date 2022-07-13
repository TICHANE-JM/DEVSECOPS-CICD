# Installation des outils nécessaires
init:
	if [ -x /usr/bin/pacman ]; then \
		xargs -a packages/packages.txt sudo pacman -Sy --noconfirm; \
	elif [ -x /usr/bin/apt-get ]; then \
		xargs -a packages/packages.txt sudo apt-get install -y; \
	elif [ -x /usr/bin/yum ]; then \
		xargs -a packages/packages.txt sudo yum -y install; \
	else \
		echo "No package manager found"; \
	fi
	

# Initialisation de la configuration du menu fixe sur les hôtes
container:
	ansible-playbook -i inventories/virtualbox.yaml site.yaml --tags setup

# Initialisation de la configuration de Jenkins
jenkins:
	ansible-playbook -i inventories/virtualbox.yaml site.yaml --tags jenkins

# Initialisation de la configuration du registre
registry:
	ansible-playbook -i inventories/virtualbox.yaml site.yaml --tags registry

# Initialisation de la configuration du sondeur
sonar:
	ansible-playbook -i inventories/virtualbox.yaml site.yaml --tags sonar

# Initialisation de la configuration de gitlab
gitlab:
	ansible-playbook -i inventories/virtualbox.yaml site.yaml --tags gitlab

# Initialisation de la configuration de docker, jenkins, sonar et gitlab
setup:
	ansible-playbook -i inventories/virtualbox.yaml site.yaml --tags setup,jenkins,sonar,gitlab,registry

# Démarrage vms avec vagrant
vagrant_up:
	bash scripts/vagrant_up.sh

# Détruire des vms avec vagrant
vagrant_destroy:
	bash scripts/vagrant_destroy.sh 