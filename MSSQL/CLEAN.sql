-- # [ zrfisaac ]

-- # [ about ]
-- # - author : Isaac Caires
-- # . - email : zrfisaac@gmail.com
-- # . - site : zrfisaac.github.io

-- # [ mssql ]
IF EXISTS (
	SELECT TOP 1 NULL
	FROM INFORMATION_SCHEMA.TABLES
	WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = 'BASE TABLE'
	AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = 'tb_order_item'
) DROP TABLE tb_order_item;
IF EXISTS (
	SELECT TOP 1 NULL
	FROM INFORMATION_SCHEMA.TABLES
	WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = 'BASE TABLE'
	AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = 'tb_order'
) DROP TABLE tb_order;
IF EXISTS (
	SELECT TOP 1 NULL
	FROM INFORMATION_SCHEMA.TABLES
	WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = 'BASE TABLE'
	AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = 'tb_client'
) DROP TABLE tb_client;
IF EXISTS (
	SELECT TOP 1 NULL
	FROM INFORMATION_SCHEMA.TABLES
	WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = 'BASE TABLE'
	AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = 'tb_product'
) DROP TABLE tb_product;
