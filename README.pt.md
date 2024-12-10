[![](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/zrfisaac/QuickOrder)
[![](https://img.shields.io/badge/-english-4169E1?style=for-the-badge)](README.en.md)
[![](https://img.shields.io/badge/português--f9c22b?style=for-the-badge)](README.pt.md)
---
[![](https://img.shields.io/badge/version-1.0.0-007EC6?style=flat-square)](https://github.com/zrfisaac/QuickOrder/archive/refs/tags/v1.0.0.zip)
[![](https://img.shields.io/badge/Installer-Win32-6DAF00?style=flat-square)](https://github.com/zrfisaac/QuickOrder/releases/download/v1.0.0/QuickOrder_1.0.0_Win32.exe)
[![](https://img.shields.io/badge/Installer-Win64-6DAF00?style=flat-square)](https://github.com/zrfisaac/QuickOrder/releases/download/v1.0.0/QuickOrder_1.0.0_Win64.exe)

# <img src="favicon.png" alt="Logo" width="32" height="32"> Quick Order

**QuickOrder** é um MVP leve projetado para demonstrar um sistema simplificado de gerenciamento de pedidos de clientes. Ele facilita o gerenciamento de clientes, pedidos, itens de pedidos e produtos. QuickOrder é ideal para pequenos negócios ou desenvolvedores que buscam um sistema simples e eficiente para demonstrar funcionalidades relacionadas a pedidos.

## Funcionalidades
- **Gerenciamento de Clientes**: Adicione, edite e remova clientes do sistema.
- **Gerenciamento de Pedidos**: Crie, atualize e acompanhe os pedidos de clientes.
- **Catálogo de Produtos**: Gerencie informações e inventário de produtos.
- **Itens do Pedido**: Relacione produtos a pedidos com detalhes de quantidade e preço.

## Dependências
Este projeto utiliza as seguintes ferramentas e bibliotecas:

- **[SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)**: Uma versão leve do SQL Server para gerenciamento de banco de dados.
- **[Delphi Community Edition](https://www.embarcadero.com/products/delphi/starter/free-download)**: Um IDE para desenvolvimento rápido de aplicações.
- **[DevExpress](https://www.devexpress.com/)**: Uma biblioteca para componentes e ferramentas de interface do usuário.
- **[FastReport](https://www.fast-report.com/)**: Uma solução para geração e gerenciamento de relatórios.
- **[Fugue Icons 3.5.6](https://p.yusukekamiyamane.com/)**: Uma coleção de ícones de alta qualidade criada por Yusuke Kamiyamane.

##

## Diagrama de Entidade-Relacionamento (DER)

```mermaid
erDiagram
    tb_client {
        INT cl_client PK "Código do cliente (chave primária)"
        VARCHAR cl_name "Nome do cliente"
        VARCHAR cl_address "Endereço do cliente"
        VARCHAR cl_phone "Telefone do cliente"
        VARCHAR cl_email "E-mail do cliente"
    }

    tb_product {
        INT cl_product PK "Código do produto (chave primária)"
        VARCHAR cl_name "Nome do produto"
        VARCHAR cl_description "Descrição do produto"
        DECIMAL cl_price "Preço do produto"
    }

    tb_order {
        INT cl_order PK "Código do pedido (chave primária)"
        INT cl_client FK "Código do cliente (chave estrangeira)"
        DATETIME cl_date "Data do pedido"
        DECIMAL cl_value "Valor total do pedido"
    }

    tb_order_item {
        INT cl_order_item PK "Código do item do pedido (chave primária)"
        INT cl_order FK "Código do pedido (chave estrangeira)"
        INT cl_product FK "Código do produto (chave estrangeira)"
        INT cl_quantity "Quantidade do item no pedido"
        DECIMAL cl_price "Preço unitário do item no pedido"
    }

    tb_client ||--o{ tb_order : "realiza"
    tb_order ||--o{ tb_order_item : "contém"
    tb_product ||--o{ tb_order_item : "faz parte de"
```

### Explicação:
- **`tb_client`**: Contém detalhes dos clientes.
- **`tb_product`**: Armazena informações dos produtos.
- **`tb_order`**: Representa os pedidos e se relaciona com os clientes por meio de uma chave estrangeira.
- **`tb_order_item`**: Acompanha os itens de um pedido e se relaciona tanto com pedidos quanto com produtos.

### Relacionamentos:
1. Um **cliente** (`tb_client`) pode realizar vários **pedidos** (`tb_order`).
2. Um **pedido** (`tb_order`) pode conter vários **itens de pedido** (`tb_order_item`).
3. Um **produto** (`tb_product`) pode fazer parte de vários **itens de pedido** (`tb_order_item`).

## Próximas Versões
QuickOrder está em desenvolvimento e servirá como uma vitrine para sistemas simples e eficientes de gerenciamento de pedidos.

## Como Começar
As instruções de instalação e configuração estarão disponíveis após o lançamento.

## Contribuição
Contribuições são bem-vindas! Para contribuir:
1. Faça um fork do repositório.
2. Crie uma nova branch (`git checkout -b feature/sua-funcionalidade`).
3. Faça o commit das suas alterações (`git commit -m 'Adicione sua funcionalidade'`).
4. Envie para o repositório (`git push origin feature/sua-funcionalidade`).
5. Abra um pull request.

## Licença
[Licença MIT](LICENSE)
