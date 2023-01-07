-- CREATE TABLE ACCOUNT
-- (
-- 	UserName char(20) NOT NULL PRIMARY KEY,
-- 	Password char(20) NOT NULL
-- );
-- CREATE TABLE BUYER
-- (
-- 	UserName char(20) NOT NULL PRIMARY KEY ,
-- 	ImageProfile Image
-- );

-- CREATE TABLE FOOD
-- (
-- 	FoodName nvarchar (80)PRIMARY KEY,
-- 	ImageFood Image
-- );
-- CREATE TABLE STORE
-- (
-- 	StoreName nvarchar (80)NOT NULL,
-- 	FoodName nvarchar(80) NOT NULL,
-- 	ImageStore Image,
-- 	Adress nvarchar(80),
-- 	Descriptions nvarchar(150),
-- 	Rating float ,
-- 	Price Money,
-- 	PRIMARY KEY (StoreName,FoodName)
-- );

-- CREATE TABLE FEEDBACK 
-- (
-- 	StoreName nvarchar (80) NOT NULL,
-- 	UserName char(20) NOT NULL,
-- 	FoodName nvarchar(80) NOT NULL,
-- 	RatingStar int,
-- 	Comment nvarchar (100),
-- 	PRIMARY KEY (StoreName, UserName,FoodName)
-- );

-- CREATE TABLE VOUCHER 
-- (	
-- 	VoucherName char(10) NOT NULL,
-- 	ValueDisCount Money NOT NULL,
-- 	Remaining int,
-- 	PRIMARY KEY(VoucherName,ValueDisCount)
-- );
-- CREATE TABLE B_ORDER
-- (
-- 	IDOrder char(5) NOT NULL,
-- 	FirstName nvarchar(50),
-- 	LastName nvarchar (50), 
-- 	B_Address nvarchar (50),
-- 	Province nvarchar (50),
-- 	City nvarchar (50),
-- 	PhoneNumber char(10),
-- 	Note nvarchar(50),
-- 	ShippingCost Money,
-- 	Discount Money, 
-- 	Total Money,
-- 	UserName char(20),
-- 	VoucherName char(10),
-- 	PRIMARY KEY (IDOrder);
-- )

--USE SHOPAA
--INSERT ACCOUNT
-- INSERT INTO ACCOUNT VALUES ('Customer1','123');
-- INSERT INTO ACCOUNT VALUES ('Customer2','123');
-- INSERT INTO ACCOUNT VALUES ('Customer3','123');
-- INSERT INTO ACCOUNT VALUES ('Customer4','123');
-- INSERT INTO ACCOUNT VALUES ('Customer5','123');
-- INSERT INTO ACCOUNT VALUES ('Customer6','123');
-- INSERT INTO ACCOUNT VALUES ('Customer7','123');
-- INSERT INTO ACCOUNT VALUES ('Customer8','123');
-- INSERT INTO ACCOUNT VALUES ('Customer9','123');
--SELECT * FROM ACCOUNT

--INSERT BUYER
--chưa thêm ảnh người dùng
-- INSERT INTO BUYER VALUES ('Customer1',NULL);
-- INSERT INTO BUYER VALUES ('Customer2',NULL);
-- INSERT INTO BUYER VALUES ('Customer3',NULL);
-- INSERT INTO BUYER VALUES ('Customer4',NULL);
-- INSERT INTO BUYER VALUES ('Customer5',NULL);
-- INSERT INTO BUYER VALUES ('Customer6',NULL);
-- INSERT INTO BUYER VALUES ('Customer7',NULL);
-- INSERT INTO BUYER VALUES ('Customer8',NULL);
-- INSERT INTO BUYER VALUES ('Customer9',NULL);
--SELECT * FROM BUYER

--INSERT FOOD
--chưa insert ảnh món ăn
--INSERT INTO FOOD VALUES ('Cơm sườ',NULL);
-- INSERT INTO FOOD VALUES ('Hủ tiếu',NULL);
-- INSERT INTO FOOD VALUES ('Bún bò Huế',NULL);
-- INSERT INTO FOOD VALUES ('Cơm gà',NULL);
-- INSERT INTO FOOD VALUES ('Bún thịt nướng',NULL);
-- INSERT INTO FOOD VALUES ('Bánh mì',NULL);
-- INSERT INTO FOOD VALUES ('Bánh xèo',NULL);
-- INSERT INTO FOOD VALUES ('Bún đậu mắm tôm',NULL);
--SELECT * FROM FOOD

--INSERT VOUCHER
-- INSERT INTO VOUCHER VALUES('SHOPAA1',20.000,10);
-- INSERT INTO VOUCHER VALUES('SHOPAA2',30.000,10);
-- INSERT INTO VOUCHER VALUES('SHOPAA3',40.000,10);
-- INSERT INTO VOUCHER VALUES('SHOPAA4',50.000,10);
-- INSERT INTO VOUCHER VALUES('SHOPAA5',60.000,5);
-- INSERT INTO VOUCHER VALUES('SHOPAA6',70.000,1);
-- INSERT INTO VOUCHER VALUES('SHOPAA7',80.000,2);
--SELECT * FROM VOUCHER

--INSERT STORE
-- INSERT INTO STORE VALUES ('Cơm sườn 1','Cơm sườn','https://bitly3s.com/x9cf5a','Quận 4, Tp. HCM','Ngo',5,30.000);
-- INSERT INTO STORE VALUES ('Quán cơm bốn mùa','Cơm sườn','https://bitly3s.com/t3c40c','Quận 5, Tp. HCM','Ngon, Cay',5,30.000);
-- INSERT INTO STORE VALUES ('Cơm tấm sườ','Cơm sườn','https://bitly3s.com/j745t3','Quận 6, Tp. HCM','Ngo',4,80.000);
-- INSERT INTO STORE VALUES ('Cơm sườn chị Ba','Cơm sườn','https://bitly3s.com/3wvqty','Quận 7, Tp. HCM','Ngo',5,20.000);
-- INSERT INTO STORE VALUES ('Cơm sườn cô Năm','Cơm sườn','https://bitly3s.com/b5xc4e','Quận 8, Tp. HCM','Ngo',3,60.000);

-- INSERT INTO STORE VALUES ('Hủ tiếu chay','Hủ tiếu','https://bitly3s.com/djm6lw','Quận 1, Tp.HCM','Nước dùng ngọt thanh, cam kết không đường',5,40.000);
-- INSERT INTO STORE VALUES ('Hủ tiếu Giò','Hủ tiếu','https://bitly3s.com/4kjfmo','Quận 2, Tp.HCM','Nước dùng được hầm từ xương',5,50.000);
-- INSERT INTO STORE VALUES ('Hủ tiếu bò viê','Hủ tiếu','https://bitly3s.com/xc1v6','Quận 3, Tp.HCM','làm 100% từ bò thật',5,40.000);
-- INSERT INTO STORE VALUES ('Hủ tiếu truyền thống','Hủ tiếu','https://bitly3s.com/sbjhb7','Quận 1, Tp.HCM','hương vị miền tây sông nước',5,40.000);
-- INSERT INTO STORE VALUES ('Hủ tiếu khô','Hủ tiếu','https://bitly3s.com/58uxqq','Quận 1, Tp.HCM','Sợi hủ tiếu Mỹ Tho',5,40.000);

-- INSERT INTO STORE VALUES ('Bún bò Huế','Bún bò Huế','https://bitly3s.com/iarqh8','Quận 1, Tp.HCM','Đúng chất vị Huế',5,40.000);
-- INSERT INTO STORE VALUES ('Bún bò Huế cô Hoa','Bún bò Huế','https://bitly3s.com/jtsowf','Quận 1, Tp.HCM','Bún bò mỡ nổi',5,50.000);
-- INSERT INTO STORE VALUES ('Bún bò Sài Gò','Bún bò Huế','https://bitly3s.com/9q2o6h','Quận 2, Tp.HCM','Hương vị gần gũi',5,40.000);
-- INSERT INTO STORE VALUES ('Bún bò Bến Bình Đông','Bún bò Huế','https://bitly3s.com/nd9v36','Quận 8, Tp.HCM','Bò tươi',5,50.000);
-- INSERT INTO STORE VALUES ('Bún bò Huế số 2','Bún bò Huế','https://bitly3s.com/uq4bfj','Quận 1, Tp.HCM','Ngon nhì thành phố',5,40.000);

-- INSERT INTO STORE VALUES ('Cơm gà 99','Cơm gà', 'https://bitly3s.com/0tet5d' ,'Quận 1, Tp.HCM','Gà tươi',5,40.000);
-- INSERT INTO STORE VALUES ('Cơm gà cây bông','Cơm gà', 'https://bitly3s.com/gqvb0y' ,'Quận 2, Tp.HCM','Ngo',5,40.000);
-- INSERT INTO STORE VALUES ('Cơm gà giò','Cơm gà', 'https://bitly3s.com/z3ska5' ,'Quận 5, Tp.HCM','Cơm gà tẩm bột chiên giò',5,40.000);
-- INSERT INTO STORE VALUES ('Chicke','Cơm gà','https://bitly3s.com/cakg6i','Quận 6, Tp.HCM','Gà theo mó',5,40.000);
-- INSERT INTO STORE VALUES ('Cơm gà vàng','Cơm gà','https://bitly3s.com/x80q9s','Quận 9, Tp.HCM','Gà tươi ướp nghệ',5,40.000);

-- INSERT INTO STORE VALUES ('Bún thịt nướng số 1','Bún thịt nướng','https://bitly3s.com/cw777r','Quận 1, Tp.HCM','Ngo',5,40.000);
-- INSERT INTO STORE VALUES ('Bún thịt nướng','Bún thịt nướng','https://bitly3s.com/d39ezu','Quận 2, Tp.HCM','Ngo',5,40.000);
-- INSERT INTO STORE VALUES ('Bún thịt nướng 999 ','Bún thịt nướng','https://bitly3s.com/yk13vo','Quận 1, Tp.HCM','Ngo',5,40.000);
-- INSERT INTO STORE VALUES ('Bún thịt nướng 888','Bún thịt nướng','https://bitly3s.com/1tl9a3','Quận 1, Tp.HCM','Ngo',5,40.000);
-- INSERT INTO STORE VALUES ('Bún thịt nướng hẻm số 2','Bún thịt nướng','https://bitly3s.com/q9hxa8','Quận 5, Tp.HCM','Ngo',5,40.000);

-- INSERT INTO STORE VALUES ('Bánh mì thịt','Bánh mì','https://bitly3s.com/ymiahm','Quận 3, Tp.HCM','Ngo',5,20.000);
-- INSERT INTO STORE VALUES ('Bánh mì cá','Bánh mì','https://bitly3s.com/orkkqx','Quận 1, Tp.HCM','Ngo',5,20.000);
-- INSERT INTO STORE VALUES ('Bánh mì trứng','Bánh mì','https://bitly3s.com/nwr6da','Quận 3, Tp.HCM','Ngo',5,25.000);
-- INSERT INTO STORE VALUES ('Bánh mì cô Ba','Bánh mì','https://bitly3s.com/cod8fh','Quận 5, Tp.HCM','Ngo',5,20.000);
-- INSERT INTO STORE VALUES ('Bánh mì thịt nướng','Bánh mì','https://bitly3s.com/0ecvuf','Quận 3, Tp.HCM','Ngo',5,20.000);

-- INSERT INTO STORE VALUES ('Bánh xèo rau rừng','Bánh xèo','https://bitly3s.com/zqvzps','Quận 4, Tp.HCM','Rau rừng 100%',5,30.000);
-- INSERT INTO STORE VALUES ('Bánh xèo miền Tây','Bánh xèo','https://bitly3s.com/4shjvp','Quận 5, Tp.HCM','Hương vị quê nhà',5,30.000);
-- INSERT INTO STORE VALUES ('Bánh xèo miền Trung','Bánh xèo','https://bitly3s.com/mu9ipr','Quận 8, Tp.HCM','Ngo',5,30.000);
-- INSERT INTO STORE VALUES ('Bánh xèo 666','Bánh xèo','https://bitly3s.com/hmzvmf','Quận 3, Tp.HCM','Ngo',5,30.000);
-- INSERT INTO STORE VALUES ('Bánh xèo tôm thịt','Bánh xèo','https://bitly3s.com/k5mfv1','Quận 6, Tp.HCM','Ngo',5,30.000);

-- INSERT INTO STORE VALUES ('Bún đậu mắm tôm cây me','Bún đậu mắm tôm','https://bitly3s.com/bbuqgv','Quận 6, Tp.HCM','Ngo',5,50.000);
-- INSERT INTO STORE VALUES ('Bún đậu mắm tôm cô Châu','Bún đậu mắm tôm','https://bitly3s.com/gky887','Quận 5, Tp.HCM','Ngo',5,50.000);
-- INSERT INTO STORE VALUES ('Bún đậu mắm tôm Sạch','Bún đậu mắm tôm','https://bitly3s.com/rlbi7g','Quận 8, Tp.HCM','Ngo',5,50.000);
-- INSERT INTO STORE VALUES ('Bún đậu mắm tôm bà lão','Bún đậu mắm tôm','https://bitly3s.com/sk6qtm','Quận 6, Tp.HCM','Ngo',5,50.000);
-- INSERT INTO STORE VALUES ('Bún đậu mắm tôm quận 1','Bún đậu mắm tôm','https://bitly3s.com/bbuqgv','Quận 1, Tp.HCM','Ngo',5,50.000);
-- --SELECT * FROM STORE

-- --INSERT FEEDBACK
-- INSERT INTO FEEDBACK VALUES('Bánh xèo rau rừng','Customer1','Bánh xèo',5,'Ngon, rau sạch tươi');
-- INSERT INTO FEEDBACK VALUES('Bún thịt nướng số 1','Customer5','Bún thịt nướng',5,'Thịt nướng khô');
-- INSERT INTO FEEDBACK VALUES('Cơm gà vàng','Customer4','Cơm gà',5,'Gà ngo')
-- INSERT INTO FEEDBACK VALUES('Quán cơm bốn mùa','Customer8','Cơm sườ',5,'Nước mắm ngo');
-- INSERT INTO FEEDBACK VALUES('Hủ tiếu bò viê','Customer8','Hủ tiếu',5,'Bò viên dai ngo');
-- --SELECT * FROM FEEDBACK

-- --INSERT B_ORDER
-- INSERT INTO B_ORDER VALUES('OD001','Nguyễ','A','Số 3, đường 2','Quận 3','Tp.HCM','0123456789','không ớt',5.000,20.000,85.000,'Customer1','SHOPAA1');
-- INSERT INTO B_ORDER VALUES('OD002','Nguyễ','Bình','Số 8, đường 10','Quận 1','Tp.HCM','0123456788','cho nhiều rau',10.000,20.000,50.000,'Customer3','SHOPAA1');
-- INSERT INTO B_ORDER VALUES('OD003','Nguyễ','Công','Số 7, đường 7','Quận 7','Tp.HCM','0123456787','không ớt',20.000,0,120.000,'Customer5',NULL);
-- --SELECT * FROM B_ORDER

-- --INSERT B_ORDERDETAIL
-- INSERT INTO B_ORDERDETAIL VALUES('Hủ tiếu','Hủ tiếu Giò','OD001',2,100.000);
-- INSERT INTO B_ORDERDETAIL VALUES('Bánh xèo','Bánh xèo tôm thịt','OD002',2,60.000);
-- INSERT INTO B_ORDERDETAIL VALUES('Bánh mì','Bánh mì cá','OD003',10,200.000);