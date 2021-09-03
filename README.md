# Infra as code com terraform
Projeto destinado a criação de infra na AWS utilizando Terraform.

## O que será criado
- ### Security Group
  - Inbound SSH (para o ip local)
  - Inbound HTTP (para qualquer ip)
  - Inbound HTTPS (para qualquer ip)
 
 - ### Instance
    - A instância será associada ao SG criado.
 
 - ### Armazenamento do terraform state no bucket
    - Cripitografado com a chave terraform.tfstate
    - Necessário o bucket já estar criado

## Criando a infra
```bash
terraform init -backend-config "bucket=VALUE_1" -backend-config "region=VALUE_2"
```

   **Value_1** = Nome do bucket onde será armazenado o terraformstate
   
   **Value_2** = Região onde o bucket foi criado
   
   
```bash
terraform plan
```   
```bash
terraform apply -auto-approve
``` 

> Necessário informar região onde será criada a infra e também o número de instancias a serem inicializadas.


## IMPORTANTE
> Lembre-se de limpar sua infra para evitar futuros gastos.

```bash
terraform destroy -auto-approve
``` 


:+1:


