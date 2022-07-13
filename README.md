<h1 align="center">DevOps</h1>

<p align="center">
  <img alt="DevOps" src="https://img.shields.io/static/v1?label=DevOps&message=CICD&color=8257E5&labelColor=000000"  />

  <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=49AA26&labelColor=000000">
</p>

<p align="center">
  <a href="#-projet">Projet</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-technologies">Les technologies</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#%EF%B8%8F-environnement">Environnement</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-etapes">Étapes</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-licence">Licence</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-references">Références</a>
</p>

<p align="center">
  <img alt="DevOps" src="data/devops-process.png">
</p>


## 🌱 projet

- Construction d'un environnement CICD

## ✨ technologies

- Vagrant  
- Ansible 
- Java 
- Springboot
- Gitlab 
- Jenkins 
- Maven 
- Sonar 
- Registry 
- Docker 


## 🛠️ environnement 

- L'infrastructure et la configuration des services ont été réalisées avec `ansible`, `vagrant` et `virtualbox`.

1. [Architecture de l'infrastructure et des services et schéma de provisionnement](./docs/architecture.md)

## 🚀 etapes
0. [Planification - Étapes du projet](./docs/stages.md) 
1. [Dépendances requises](packages/README.md) 
2. [Clé publique et privée](keys/README.md)
3. [Provisionnement des infrastructures](vagrant/README.MD) 
4. [Provisionnement des services](roles/README.md) 
5. [Intégration de services](roles/integration.md) 
6. [Construire le reste de l'API](./app-spring/README.md)
7. [développement de pipeline](./roles/configure_jenkins/files/jenkinsfile/README.md)

## 📚 Étudier comment je vais faire la partie déploiement

>> Remarque : Technologies à l'étude :

1. `Environnement Kubernetes`
2. `Tableau de bord LENS`
3. `Déployer avec Argo CD`
4. `Contrôleur d'entrée Haproxy`

- [laboratoire d'étude](./vagrant/k8s/README.md)

## 📄 licence
Ce projet est sous licence MIT. voir le dossier [LICENCE](LICENSE) pour plus de détails.

## 🙇 references

1. [Ansible](https://docs.ansible.com/ansible_community.html) 
2. [Jenkins](https://www.jenkins.io/doc/) 
3. [Docker](https://docs.docker.com/)
4. [Sonar](https://docs.sonarqube.org/latest/)
5. [Integração GitLab e Jenkins](https://docs.gitlab.com/ee/integration/jenkins.html)
6. [Integração Sonarqube e Jenkins](https://docs.sonarqube.org/latest/analysis/scan/sonarscanner-for-jenkins/#:~:text=Log%20into%20Jenkins%20as%20an,a%20'Secret%20Text'%20credential.)
7. [GitLab Docker Images](https://docs.gitlab.com/ee/install/docker.html)