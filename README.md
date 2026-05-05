Static Site Deployment 

Este projeto é um laboratório prático de provisionamento de infraestrutura e automação de deploy na AWS, desenvolvido como consolidação de estudos. 

O objetivo é criar um fluxo completo de CI/CD para uma aplicação web estática utilizando nginx, garantindo alta disponibilidade e utilizando a abordagem de Infraestrutura como Código com terraform, mantendo todos os recursos dentro do AWS Free Tier.

Arquitetura do Projeto:

O fluxo de funcionamento da aplicação segue o seguinte ciclo:

1. CI/CD: Qualquer alteração no repositório aciona o GitHub Actions.
2. Build e Registry: A pipeline constrói a imagem Docker baseada no Alpine e faz o push para um repositório privado no Amazon ECR.
3. Deploy Contínuo: O GitHub Actions sinaliza o Amazon ECS, que atualiza a task e sobe a nova versão do container dentro de uma instância EC2.
4. Acesso do Usuário: O tráfego externo entra via Internet Gateway, passa por um Application Load Balancer nas sub-redes públicas, que então roteia a requisição HTTP para o container ativo.

Tecnologias Utilizadas :

* Cloud: AWS (VPC, EC2, ECS, ECR, ALB, IAM)
* IaC: Terraform
* Containers: Docker 
* CI/CD: GitHub Actions
* Sistema Operacional Base- Local: Linux

Pré-requisitos para Execução Local

Para reproduzir este ambiente a partir do seu terminal, você precisará de:
* Conta AWS
* aws-cli
* Docker
* Git
