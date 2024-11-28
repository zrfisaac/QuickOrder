-- # [ zrfisaac ]

-- # [ about ]
-- # - author : Isaac Caires
-- # . - email : zrfisaac@gmail.com
-- # . - site : zrfisaac.github.io

-- # [ mssql ]

-- ######### TABLE #########

-- # : Creation of the products table
IF NOT EXISTS (
	SELECT TOP 1 NULL
	FROM INFORMATION_SCHEMA.TABLES
	WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = 'BASE TABLE'
	AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = 'tb_product'
)
BEGIN
	CREATE TABLE tb_product (
		 cl_product				INT PRIMARY KEY			NOT NULL		-- Product code (primary key)
		,cl_name				VARCHAR(100)			NOT NULL		-- Product name
		,cl_description			VARCHAR(255)				NULL		-- Product description
		,cl_price				DECIMAL(24,2)			NOT NULL		-- Product price
	);
END;
-- */

-- # : Creation of the clients table
-- /*
IF NOT EXISTS (
	SELECT TOP 1 NULL
	FROM INFORMATION_SCHEMA.TABLES
	WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = 'BASE TABLE'
	AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = 'tb_client'
)
BEGIN
	CREATE TABLE tb_client (
		 cl_client				INT PRIMARY KEY			NOT NULL		-- Client code (primary key)
		,cl_name				VARCHAR(100)			NOT NULL		-- Client name
		,cl_address				VARCHAR(255)				NULL		-- Client address
		,cl_phone				VARCHAR(20)					NULL		-- Client phone
		,cl_email				VARCHAR(100)				NULL		-- Client email
	);
END;
-- */

-- # : Creation of the orders table
-- /*
IF NOT EXISTS (
	SELECT TOP 1 NULL
	FROM INFORMATION_SCHEMA.TABLES
	WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = 'BASE TABLE'
	AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = 'tb_order'
)
BEGIN
	CREATE TABLE tb_order (
		 cl_order				INT PRIMARY KEY							-- Order code (primary key)
		,cl_client				INT										-- Client code (foreign key)
		,cl_date				DATETIME								-- Order date
		,cl_value				DECIMAL(24, 2)							-- Total order value

		,FOREIGN KEY (cl_client) REFERENCES tb_client(cl_client)		-- Relationship with the clients table
	);
END;
-- */

-- # : Creation of the order items table
-- /*
IF NOT EXISTS (
	SELECT TOP 1 NULL
	FROM INFORMATION_SCHEMA.TABLES
	WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = 'BASE TABLE'
	AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = 'tb_order_item'
)
BEGIN
	CREATE TABLE tb_order_item (
		 cl_order_item		INT PRIMARY KEY								-- Order item code (primary key)
		,cl_order			INT											-- Order code (foreign key)
		,cl_product			INT											-- Product code (foreign key)
		,cl_quantity		INT											-- Quantity of the item in the order
		,cl_price			DECIMAL(24, 2)								-- Unit price of the item in the order

		,FOREIGN KEY (cl_order) REFERENCES tb_order(cl_order)			-- Relationship with the orders table
		,FOREIGN KEY (cl_product) REFERENCES tb_product(cl_product)		-- Relationship with the products table
	);
END;
-- */

-- ######### DATA #########
