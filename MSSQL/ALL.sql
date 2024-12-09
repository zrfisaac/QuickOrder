-- # [ zrfisaac ]

-- # [ about ]
-- # - author : Isaac Caires
-- # . - email : zrfisaac@gmail.com
-- # . - site : zrfisaac.github.io

-- # [ mssql ]

-- ######### DATABASE #########

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'QUICK_ORDER')
CREATE DATABASE QUICK_ORDER
GO
USE QUICK_ORDER
GO

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
		-- Fields of the table
		 cl_product				INT IDENTITY(1,1)		NOT NULL		-- Product code (primary key)
		,cl_name				VARCHAR(100)			NOT NULL		-- Product name
		,cl_description			VARCHAR(255)				NULL		-- Product description
		,cl_price				DECIMAL(24,2)			NOT NULL		-- Product price
		-- Defines the primary key with clustered indexing
		,CONSTRAINT pk_product PRIMARY KEY CLUSTERED (cl_product ASC)
		WITH
		(
			 PAD_INDEX				=	OFF		-- Do not pad index pages to the fill factor; allows tighter packing of data.
			,STATISTICS_NORECOMPUTE	=	OFF		-- Automatically recompute statistics when they are out-of-date.
			,IGNORE_DUP_KEY			=	OFF		-- Do not ignore duplicate keys; insertion of duplicates will cause an error.
			,ALLOW_ROW_LOCKS		=	ON		-- Allow row-level locks to improve concurrency for individual rows.
			,ALLOW_PAGE_LOCKS		=	ON		-- Allow page-level locks to improve performance during bulk operations.
		)
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
		-- Fields of the table
		 cl_client				INT IDENTITY(1,1)		NOT NULL		-- Client code (primary key)
		,cl_name				VARCHAR(100)			NOT NULL		-- Client name
		,cl_address				VARCHAR(255)				NULL		-- Client address
		,cl_phone				VARCHAR(20)					NULL		-- Client phone
		,cl_email				VARCHAR(100)				NULL		-- Client email
		-- Defines the primary key with clustered indexing
		,CONSTRAINT pk_client PRIMARY KEY CLUSTERED (cl_client ASC)
		WITH
		(
			 PAD_INDEX				=	OFF		-- Do not pad index pages to the fill factor; allows tighter packing of data.
			,STATISTICS_NORECOMPUTE	=	OFF		-- Automatically recompute statistics when they are out-of-date.
			,IGNORE_DUP_KEY			=	OFF		-- Do not ignore duplicate keys; insertion of duplicates will cause an error.
			,ALLOW_ROW_LOCKS		=	ON		-- Allow row-level locks to improve concurrency for individual rows.
			,ALLOW_PAGE_LOCKS		=	ON		-- Allow page-level locks to improve performance during bulk operations.
		)
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
		-- Fields of the table
		 cl_order				INT IDENTITY(1,1)						-- Order code (primary key)
		,cl_client				INT										-- Client code (foreign key)
		,cl_date				DATETIME								-- Order date
		,cl_value				DECIMAL(24,2)							-- Total order value
		-- Relationship with the clients table
		,CONSTRAINT fk_order_cl_client FOREIGN KEY (cl_client) REFERENCES tb_client(cl_client)
		-- Defines the primary key with clustered indexing
		,CONSTRAINT pk_order PRIMARY KEY CLUSTERED (cl_order ASC)
		WITH
		(
			 PAD_INDEX				=	OFF		-- Do not pad index pages to the fill factor; allows tighter packing of data.
			,STATISTICS_NORECOMPUTE	=	OFF		-- Automatically recompute statistics when they are out-of-date.
			,IGNORE_DUP_KEY			=	OFF		-- Do not ignore duplicate keys; insertion of duplicates will cause an error.
			,ALLOW_ROW_LOCKS		=	ON		-- Allow row-level locks to improve concurrency for individual rows.
			,ALLOW_PAGE_LOCKS		=	ON		-- Allow page-level locks to improve performance during bulk operations.
		)
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
		-- Fields of the table
		 cl_order_item		INT IDENTITY(1,1)							-- Order item code (primary key)
		,cl_order			INT											-- Order code (foreign key)
		,cl_product			INT											-- Product code (foreign key)
		,cl_quantity		INT											-- Quantity of the item in the order
		,cl_price			DECIMAL(24,2)								-- Unit price of the item in the order
		-- Relationship with the orders table
		,CONSTRAINT fk_order_item_cl_order FOREIGN KEY (cl_order) REFERENCES tb_order(cl_order)
		-- Relationship with the products table
		,CONSTRAINT fk_order_item_cl_product FOREIGN KEY (cl_product) REFERENCES tb_product(cl_product)
		-- Defines the primary key with clustered indexing
		,CONSTRAINT pk_order_item PRIMARY KEY CLUSTERED (cl_order_item ASC)
		WITH
		(
			 PAD_INDEX				=	OFF		-- Do not pad index pages to the fill factor; allows tighter packing of data.
			,STATISTICS_NORECOMPUTE	=	OFF		-- Automatically recompute statistics when they are out-of-date.
			,IGNORE_DUP_KEY			=	OFF		-- Do not ignore duplicate keys; insertion of duplicates will cause an error.
			,ALLOW_ROW_LOCKS		=	ON		-- Allow row-level locks to improve concurrency for individual rows.
			,ALLOW_PAGE_LOCKS		=	ON		-- Allow page-level locks to improve performance during bulk operations.
		)

	);
END;
-- */

-- ######### DATA #########

-- # : Insert 3 fictitious products into the tb_product table
insert tb_product
(
	 cl_name
	,cl_description
	,cl_price
) SELECT * FROM (
	SELECT
		 ''			AS cl_name
		,''			AS cl_description
		,''			AS cl_price
	WHERE 0 <> 0
	--					cl_name					cl_description						cl_price
	UNION ALL SELECT	'Laptop'				,'High-performance laptop'			,   1500.00
	UNION ALL SELECT	'Wireless Mouse'		,'Ergonomic wireless mouse'			,     30.00
	UNION ALL SELECT	'Mechanical Keyboard'	,'Durable mechanical keyboard'		,     80.00
) AS al_data
WHERE NOT EXISTS (
	SELECT TOP 1 NULL
	FROM tb_product
	WHERE tb_product.cl_name = al_data.cl_name
	AND tb_product.cl_description = al_data.cl_description
	AND tb_product.cl_price = al_data.cl_price
);


-- # : Insert 5 fictitious clients into the tb_client table
insert tb_client
(
	 cl_name
	,cl_address
	,cl_phone
	,cl_email
) SELECT * FROM (
	SELECT
		 ''			AS cl_name
		,''			AS cl_address
		,''			AS cl_phone
		,''			AS cl_email
	WHERE 0 <> 0
	--					cl_name				cl_address				cl_phone		cl_email
	UNION ALL SELECT	'Alice Johnson'		,'123 Flower Street'	,'1234567890'	,'alice.johnson@email.com'
	UNION ALL SELECT	'Bob Smith'			,'456 Main Avenue'		,'9876543210'	,'bob.smith@email.com'
	UNION ALL SELECT	'Charlie Brown'		,'789 Green Square'		,'1122334455'	,'charlie.brown@email.com'
	UNION ALL SELECT	'Diana Ross'		,'321 Blue Lane'		,'9988776655'	,'diana.ross@email.com'
	UNION ALL SELECT	'Edward King'		,'654 Sunny Alley'		,'4433221100'	,'edward.king@email.com'
) AS al_data
WHERE NOT EXISTS (
	SELECT TOP 1 NULL
	FROM tb_client
	WHERE tb_client.cl_name = al_data.cl_name
	AND tb_client.cl_address = al_data.cl_address
	AND tb_client.cl_phone = al_data.cl_phone
	AND tb_client.cl_email = al_data.cl_email
);

-- # : Insert 1 order into the tb_order table
insert tb_order
(
	 cl_client
	,cl_date
	,cl_value
) SELECT
	 tb_client.cl_client
	AS cl_client
	,CONVERT(DATETIME,al_data.cl_date,120)
	AS cl_date
	,al_data.cl_value
	AS cl_value
FROM (
	SELECT
		 ''			AS cl_client
		,''			AS cl_date
		,0.0		AS cl_value
	WHERE 0 <> 0
	--					cl_client			cl_date					cl_value
	UNION ALL SELECT	'Diana Ross'		,'2024-12-09'			,110.00
) AS al_data
INNER JOIN tb_client ON tb_client.cl_name = al_data.cl_client
WHERE NOT EXISTS (
	SELECT TOP 1 NULL
	FROM tb_order
	WHERE tb_order.cl_client = tb_client.cl_client
	AND tb_order.cl_date = CONVERT(DATETIME,al_data.cl_date,120)
	AND tb_order.cl_value = al_data.cl_value
);

-- # : Insert 2 order item into the tb_order_item table
insert tb_order_item
(
	 cl_order
	,cl_product
	,cl_quantity
	,cl_price
) SELECT
	 tb_order.cl_order
	AS cl_order
	,tb_product.cl_product
	AS cl_product
	,al_data.cl_quantity
	AS cl_quantity
	,tb_product.cl_price
	AS cl_price
FROM (
	SELECT
		 ''			AS cl_client
		,''			AS cl_date
		,0.0		AS cl_value
		,''			AS cl_product
		,0			AS cl_quantity
	WHERE 0 <> 0
	--					cl_client			cl_date					cl_value		cl_product					cl_quantity
	UNION ALL SELECT	'Diana Ross'		,'2024-12-09'			,110.00			,'Wireless Mouse'			,1
	UNION ALL SELECT	'Diana Ross'		,'2024-12-09'			,110.00			,'Mechanical Keyboard'		,1
) AS al_data
INNER JOIN tb_client ON tb_client.cl_name = al_data.cl_client
INNER JOIN tb_product ON tb_product.cl_name = al_data.cl_product
INNER JOIN tb_order ON tb_order.cl_client = tb_client.cl_client
	AND tb_order.cl_date = CONVERT(DATETIME,al_data.cl_date,120)
	AND tb_order.cl_value = al_data.cl_value
WHERE NOT EXISTS (
	SELECT TOP 1 NULL
	FROM tb_order_item
	WHERE tb_order_item.cl_order = tb_order.cl_order
	AND tb_order_item.cl_product = tb_product.cl_product
	AND tb_order_item.cl_quantity = al_data.cl_quantity
	AND tb_order_item.cl_price = tb_product.cl_price
);

-- # : Procedure is responsible for generating a report
IF	EXISTS (
	SELECT TOP 1 NULL
	FROM SYSOBJECTS
	WHERE UPPER(NAME) = N'PR_REPORT'
	AND UPPER(TYPE) = N'P'
) DROP PROCEDURE PR_REPORT
GO
CREATE PROCEDURE PR_REPORT
	 @P_CLIENT		VARCHAR(100)
	,@P_DATE_BEGIN	VARCHAR( 10)
	,@P_DATE_END	VARCHAR( 10)
AS
	SELECT
		 tb_order.cl_order
		AS order_id
		,tb_order.cl_date
		AS order_date
		,tb_order.cl_value
		AS order_value
		,tb_order_item.cl_order_item
		AS order_item_id
		,tb_order_item.cl_price
		AS order_item_price
		,tb_order_item.cl_quantity
		AS order_item_quantity
		,tb_order_item.cl_price * tb_order_item.cl_quantity
		AS order_item_value
		,tb_product.cl_name
		as product_name
		,tb_client.cl_name
		as client_name
	FROM
		tb_order
		INNER JOIN tb_order_item
			ON tb_order_item.cl_order = tb_order.cl_order
		INNER JOIN tb_product
			ON tb_product.cl_product = tb_order_item.cl_product
		INNER JOIN tb_client
			ON tb_client.cl_client = tb_order.cl_client
	WHERE
		UPPER(tb_client.cl_name) LIKE '%' + UPPER(ISNULL(@P_CLIENT,'')) + '%'
		AND tb_order.cl_date >= CONVERT(DATETIME,@P_DATE_BEGIN,120)
		AND tb_order.cl_date < DATEADD(DAY,1,CONVERT(DATETIME,@P_DATE_BEGIN,120))
	ORDER BY
		tb_order.cl_date ASC
GO
 /*
EXEC PR_REPORT
	 @P_CLIENT		=	''
	,@P_DATE_BEGIN	=	'2024-12-09'
	,@P_DATE_END	=	'2024-12-09'
-- */

-- # : Stored procedure to calculate the total value of an order by considering the quantity of each item and the corresponding product price
IF	EXISTS (
	SELECT TOP 1 NULL
	FROM SYSOBJECTS
	WHERE UPPER(NAME) = N'PR_ORDER_TOTAL'
	AND UPPER(TYPE) = N'P'
) DROP PROCEDURE PR_ORDER_TOTAL
GO
CREATE PROCEDURE PR_ORDER_TOTAL
	 @P_ORDER		INT
AS
	SELECT
		SUM(cl_price * cl_quantity)
		AS total
	FROM
		tb_order_item
GO
 /*
EXEC PR_ORDER_TOTAL
	 @P_ORDER		=	1
-- */

-- # : Stored procedure to calculate the total value of an order by considering the quantity of each item and the corresponding product price
IF	EXISTS (
	SELECT TOP 1 NULL
	FROM SYSOBJECTS
	WHERE UPPER(NAME) = N'PR_ORDER_NEW'
	AND UPPER(TYPE) = N'P'
) DROP PROCEDURE PR_ORDER_NEW
GO
CREATE PROCEDURE PR_ORDER_NEW
	 @P_CLIENT		INT
AS
	DECLARE @P_ORDER INT = -1
	SET @P_ORDER = (SELECT TOP 1 cl_order FROM tb_order WHERE NOT EXISTS(SELECT TOP 1 NULL FROM tb_order_item WHERE tb_order_item.cl_order = tb_order.cl_order))
	IF (@P_ORDER IS NULL)
	BEGIN
		INSERT INTO tb_order (cl_client,cl_date,cl_value) VALUES(@P_CLIENT,GETDATE(),0.0)
		SELECT @P_ORDER = SCOPE_IDENTITY()
	END
	SELECT @P_ORDER AS order_id
GO
 /*
EXEC PR_ORDER_NEW
	@P_CLIENT = 1
-- */
