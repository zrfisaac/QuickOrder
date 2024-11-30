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
