CREATE DATABASE SHOPAA
GO
USE SHOPAA
GO
CREATE TABLE ACCOUNT
(
	UserName char(20) NOT NULL,
	Password char(20) NOT NULL
	PRIMARY KEY (UserName)
)
CREATE TABLE BUYER
(
	UserName char(20) NOT NULL,
	--IDBuyer char(5) NOT NULL,
	ImageProfile Image
	PRIMARY KEY (UserName)
	
)

CREATE TABLE FOOD
(
	FoodName nvarchar (80),
	ImageFood Image
	PRIMARY KEY (FoodName)
)
CREATE TABLE STORE
(
	StoreName nvarchar (80)NOT NULL,
	FoodName nvarchar(80) NOT NULL,
	ImageStore Image,
	Adress nvarchar(80),
	Descriptions nvarchar(150),
	Rating float ,
	Price Money
	PRIMARY KEY (StoreName,FoodName)
)

CREATE TABLE FEEDBACK 
(
	StoreName nvarchar (80) NOT NULL,
	UserName char(20) NOT NULL,
	FoodName nvarchar(80) NOT NULL,
	RatingStar int,
	Comment nvarchar (100)
	PRIMARY KEY (StoreName, UserName,FoodName)
)
ALTER TABLE FEEDBACK ADD CHECK  (RatingStar IN (1,2,3,4,5,NULL))

CREATE TABLE VOUCHER 
(	
	VoucherName char(10) NOT NULL,
	ValueDisCount Money NOT NULL,
	Remaining int
	PRIMARY KEY(VoucherName,ValueDisCount)
)
CREATE TABLE B_ORDER
(
	IDOrder char(5) NOT NULL,
	FirstName nvarchar(50),
	LastName nvarchar (50), 
	B_Address nvarchar (50),
	Province nvarchar (50),
	City nvarchar (50),
	PhoneNumber char(10),
	Note nvarchar(50),
	ShippingCost Money,
	Discount Money, 
	Total Money,
	UserName char(20),
	VoucherName char(10)
	PRIMARY KEY (IDOrder)
)
CREATE TABLE B_ORDERDETAIL
(
	FoodName nvarchar (80) NOT NULL,
	StoreName nvarchar(80) NOT NULL,
	IDOrder char(5) NOT NULL,
	Quality int,
	Totaling Money
	PRIMARY KEY (FoodName,StoreName,IDOrder)
)
ALTER TABLE BUYER
ADD CONSTRAINT FK_BUYER_ACCOUNT
FOREIGN KEY (UserName)
REFERENCES ACCOUNT(UserName)

ALTER TABLE B_ORDER
ADD CONSTRAINT FK_B_ORDER_BUYER
FOREIGN KEY (UserName)
REFERENCES BUYER(UserName)

ALTER TABLE B_ORDER
ADD CONSTRAINT FK_B_ORDER_VOUCHER
FOREIGN KEY (VoucherName,Discount)
REFERENCES VOUCHER(VoucherName,ValueDiscount)

ALTER TABLE STORE
ADD CONSTRAINT FK_STORE_FOOD
FOREIGN KEY (FoodName)
REFERENCES FOOD (FoodName)

ALTER TABLE B_ORDERDETAIL
ADD CONSTRAINT FK_B_ORDERDETAIL_STORE
FOREIGN KEY (StoreName,FoodName)
REFERENCES STORE(StoreName,FoodName)

ALTER TABLE B_ORDERDETAIL
ADD CONSTRAINT FK_B_ORDERDETAIL_B_ORDER
FOREIGN KEY (IDOrder)
REFERENCES B_ORDER(IDOrder)

ALTER TABLE FEEDBACK
ADD CONSTRAINT FK_FEEDBACK_BUYER
FOREIGN KEY (UserName)
REFERENCES BUYER(UserName)

ALTER TABLE FEEDBACK
ADD CONSTRAINT FK_FEEDBACK_STORE
FOREIGN KEY (StoreName,FoodName)
REFERENCES STORE(StoreName,FoodName) 