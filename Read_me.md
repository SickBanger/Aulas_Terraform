---- Comandos Básicos Terraform 

*** Documentação de apoio e atualização constante 

OBS: Documentação --> https://registry.terraform.io/browse/providers
Lista de Comandos e instruções de uso 
# terraform -h

Lista de Ajuda para comandos 
# (comando) -h

Iniciar um diretório Terraform 
# terraform init 

Planejar a execução 
# terraform plan 

Executar Aplicação 
# Terraform Apply

Formatar script
# Terraform fmt


--- Documentação: (https://registry.terraform.io/browse/providers)

*** Criando um Bucket no Terraform

Realize o processo de download da sintaxe do Terraform 
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

Criar arquivo .gitignore a fim de otimizar a utilização do script
# ------------

Criar um arquivo "main.tf" junto ao VS Code
# ------------

Estruturar o script junto ao arquivo Main.tf
# 

provider "aws" {

  region = "região mais próxima"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "nome único da Bucket"
  acl    = "private"


  tags = {
    Name = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}

--- Salvar e sair 

Acessar o Terminal e executar a automação
# Terraform Init
# Terraform Plan 
# Terraform Apply

*** Fixando uma versão fix do Provider 
--- adicionar ---
terraform {
  required_version = "0.14.4"

  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.23.0"
    }
  }
}

 
provider "aws" {

  region = "região mais próxima"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "nome único da Bucket"
  acl    = "private"


  tags = {
    Name = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}

