# ☁️  Deploy e Arquitetura em Nuvem com AWS Elastic Beanstalk

Este diretório contém os arquivos de configuração (IaC) utilizados para realizar o deploy do projeto Allbooks na AWS.

## 🎯 Objetivo do Laboratório
Migrar uma aplicação containerizada (Docker) do ambiente local para uma infraestrutura robusta na nuvem, garantindo alta disponibilidade.

## ⚙️ O que foi configurado:
* **Application Load Balancer:** Para distribuir o tráfego de rede.
* **Auto Scaling Group:** Configurado com gatilhos no CloudWatch para escalar instâncias EC2 automaticamente quando o uso de CPU ultrapassa limites específicos.
* **EC2 & Security Groups:** Gerenciamento de instâncias Amazon Linux e liberação de portas (SSH/HTTP).
* **Chaos Engineering:** Simulação de estresse de CPU (usando a ferramenta `stress`) via terminal para validar o disparo de alarmes e a criação de novas máquinas pelo Auto Scaling.

## 📂 Arquivos
* `docker-compose.yml`: Orquestração local dos serviços.
* `Dockerrun.aws.json`: Manifesto lido pelo Elastic Beanstalk para buscar a imagem da aplicação direto do Docker Hub e realizar o deploy na EC2.
