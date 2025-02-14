# Terraform TaskDef Vars Generator

## Descrição
Este projeto automatiza a criação de variáveis para o Terraform a partir de entradas do usuário, gerando um arquivo formatado pronto para ser utilizado em definições de Task Definition no AWS ECS.

## Como usar

### 1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/Terraform-TaskDef-Vars-Generator.git
cd Terraform-TaskDef-Vars-Generator
```

### 2. Dê permissão de execução ao script
```bash
chmod +x run.sh
```

### 3. Execute o script
```bash
./run.sh
```

### 4. Insira as variáveis no formato `key=value`
Digite suas variáveis e pressione **Enter** após cada uma. Quando terminar, pressione **Enter** em uma linha vazia para finalizar.

Exemplo de entrada:
```
var1=value1
var2=value2
var3=value3
```

### 5. Saída gerada
O script criará um arquivo `terraform_vars.txt` com as variáveis formatadas:
```json
[
    {
        "name": "var1",
        "value": "value1"
    },
    {
        "name": "var2",
        "value": "value2"
    },
    {
        "name": "var3",
        "value": "value3"
    }
]
```

## Estrutura do Projeto
```
Terraform-TaskDef-Vars-Generator/
│── main.py               # Script Python que processa as variáveis e gera o arquivo formatado
│── run.sh                # Script Bash para coletar as variáveis do usuário e chamar o script Python
│── vars.txt              # Armazena as variáveis temporariamente
│── terraform_vars.txt    # Arquivo de saída com as variáveis formatadas
```

## Requisitos
- Python 3
- Bash

## Possíveis Melhorias Futuras
- Adicionar suporte para exportar diretamente para um arquivo `.tfvars`
- Criar uma interface interativa para facilitar a inserção das variáveis
