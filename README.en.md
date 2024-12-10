[![](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/zrfisaac/QuickOrder)
[![](https://img.shields.io/badge/-english-4169E1?style=for-the-badge)](README.en.md)
[![](https://img.shields.io/badge/português--f9c22b?style=for-the-badge)](README.pt.md)
---
[![](https://img.shields.io/badge/version-1.0.0-007EC6?style=flat-square)](https://github.com/zrfisaac/QuickOrder/archive/refs/tags/v1.0.0.zip)
[![](https://img.shields.io/badge/Installer-Win32-6DAF00?style=flat-square)](https://github.com/zrfisaac/QuickOrder/releases/download/v1.0.0/QuickOrder_1.0.0_Win32.exe)
[![](https://img.shields.io/badge/Installer-Win64-6DAF00?style=flat-square)](https://github.com/zrfisaac/QuickOrder/releases/download/v1.0.0/QuickOrder_1.0.0_Win64.exe)

# <img src="favicon.png" alt="Logo" width="32" height="32"> Quick Order

**QuickOrder** is a lightweight MVP designed to showcase a streamlined client order management system. It facilitates the management of customers, orders, order items, and products. QuickOrder is ideal for small businesses or developers looking for a simple and efficient system to demonstrate order-related functionalities.

## Features
- **Client Management**: Add, edit, and remove clients from the system.
- **Order Management**: Create, update, and track client orders.
- **Product Catalog**: Manage product information and inventory.
- **Order Items**: Link products to orders with quantity and pricing details.

## Dependencies
This project uses the following tools and libraries:

- **[SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)**: A lightweight version of SQL Server for database management.
- **[Delphi Community Edition](https://www.embarcadero.com/products/delphi/starter/free-download)**: An IDE for rapid application development.
- **[DevExpress](https://www.devexpress.com/)**: A library for UI components and tools.
- **[FastReport](https://www.fast-report.com/)**: A reporting solution for generating and managing reports.
- **[Fugue Icons 3.5.6](https://p.yusukekamiyamane.com/)**: A collection of high-quality icons created by Yusuke Kamiyamane.

##

## Entity-Relationship Diagram (ERD)

```mermaid
erDiagram
    tb_client {
        INT cl_client PK "Client code (primary key)"
        VARCHAR cl_name "Client name"
        VARCHAR cl_address "Client address"
        VARCHAR cl_phone "Client phone"
        VARCHAR cl_email "Client email"
    }

    tb_product {
        INT cl_product PK "Product code (primary key)"
        VARCHAR cl_name "Product name"
        VARCHAR cl_description "Product description"
        DECIMAL cl_price "Product price"
    }

    tb_order {
        INT cl_order PK "Order code (primary key)"
        INT cl_client FK "Client code (foreign key)"
        DATETIME cl_date "Order date"
        DECIMAL cl_value "Total order value"
    }

    tb_order_item {
        INT cl_order_item PK "Order item code (primary key)"
        INT cl_order FK "Order code (foreign key)"
        INT cl_product FK "Product code (foreign key)"
        INT cl_quantity "Quantity of the item in the order"
        DECIMAL cl_price "Unit price of the item in the order"
    }

    tb_client ||--o{ tb_order : "places"
    tb_order ||--o{ tb_order_item : "contains"
    tb_product ||--o{ tb_order_item : "is part of"
```

### Explanation:
- **`tb_client`**: Contains client details.
- **`tb_product`**: Stores product information.
- **`tb_order`**: Represents orders and links to clients through a foreign key.
- **`tb_order_item`**: Tracks items in an order and links to both orders and products.

### Relationships:
1. A **client** (`tb_client`) can place multiple **orders** (`tb_order`).
2. An **order** (`tb_order`) can have multiple **

## Upcoming Versions
QuickOrder is under development and will serve as a showcase for simple and efficient order management systems.

## Getting Started
Installation and setup instructions will be available upon release.

## Contribution
Contributions are welcome! To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add your feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

## License
[MIT License](LICENSE)
