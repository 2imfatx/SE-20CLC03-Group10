USE SHOPAA
--INSERT ACCOUNT
INSERT INTO ACCOUNT VALUES ('Customer1','123')
INSERT INTO ACCOUNT VALUES ('Customer2','123')
INSERT INTO ACCOUNT VALUES ('Customer3','123')
INSERT INTO ACCOUNT VALUES ('Customer4','123')
INSERT INTO ACCOUNT VALUES ('Customer5','123')
INSERT INTO ACCOUNT VALUES ('Customer6','123')
INSERT INTO ACCOUNT VALUES ('Customer7','123')
INSERT INTO ACCOUNT VALUES ('Customer8','123')
INSERT INTO ACCOUNT VALUES ('Customer9','123')
--SELECT * FROM ACCOUNT

--INSERT BUYER
--chưa thêm ảnh người dùng
INSERT INTO BUYER VALUES('Customer1',NULL)
INSERT INTO BUYER VALUES('Customer2',NULL)
INSERT INTO BUYER VALUES('Customer3',NULL)
INSERT INTO BUYER VALUES('Customer4',NULL)
INSERT INTO BUYER VALUES('Customer5',NULL)
INSERT INTO BUYER VALUES('Customer6',NULL)
INSERT INTO BUYER VALUES('Customer7',NULL)
INSERT INTO BUYER VALUES('Customer8',NULL)
INSERT INTO BUYER VALUES('Customer9',NULL)
--SELECT * FROM BUYER

--INSERT FOOD
--chưa insert ảnh món ăn
INSERT INTO FOOD VALUES(N'Cơm sườn',NULL)
INSERT INTO FOOD VALUES(N'Hủ tiếu',NULL)
INSERT INTO FOOD VALUES(N'Bún bò Huế',NULL)
INSERT INTO FOOD VALUES(N'Cơm gà',NULL)
INSERT INTO FOOD VALUES(N'Bún thịt nướng',NULL)
INSERT INTO FOOD VALUES(N'Bánh mì',NULL)
INSERT INTO FOOD VALUES(N'Bánh xèo',NULL)
INSERT INTO FOOD VALUES(N'Bún đậu mắm tôm',NULL)
--SELECT * FROM FOOD

--INSERT VOUCHER
INSERT INTO VOUCHER VALUES('SHOPAA1',20.000,10)
INSERT INTO VOUCHER VALUES('SHOPAA2',30.000,10)
INSERT INTO VOUCHER VALUES('SHOPAA3',40.000,10)
INSERT INTO VOUCHER VALUES('SHOPAA4',50.000,10)
INSERT INTO VOUCHER VALUES('SHOPAA5',60.000,5)
INSERT INTO VOUCHER VALUES('SHOPAA6',70.000,1)
INSERT INTO VOUCHER VALUES('SHOPAA7',80.000,2)
--SELECT * FROM VOUCHER

--INSERT STORE
INSERT INTO STORE VALUES (N'Cơm sườn 1',N'Cơm sườn','https://bitly3s.com/x9cf5a',N'Quận 4, Tp. HCM',N'Ngon',5,30.000)
INSERT INTO STORE VALUES (N'Quán cơm bốn mùa',N'Cơm sườn','https://bitly3s.com/t3c40c',N'Quận 5, Tp. HCM',N'Ngon, Cay',5,30.000)
INSERT INTO STORE VALUES (N'Cơm tấm sườn',N'Cơm sườn','https://bitly3s.com/j745t3',N'Quận 6, Tp. HCM',N'Ngon',4,80.000)
INSERT INTO STORE VALUES (N'Cơm sườn chị Ba',N'Cơm sườn','https://bitly3s.com/3wvqty',N'Quận 7, Tp. HCM',N'Ngon',5,20.000)
INSERT INTO STORE VALUES (N'Cơm sườn cô Năm',N'Cơm sườn','https://bitly3s.com/b5xc4e',N'Quận 8, Tp. HCM',N'Ngon',3,60.000)

INSERT INTO STORE VALUES (N'Hủ tiếu chay',N'Hủ tiếu','https://bitly3s.com/djm6lw',N'Quận 1, Tp.HCM',N'Nước dùng ngọt thanh, cam kết không đường',5,40.000)
INSERT INTO STORE VALUES (N'Hủ tiếu Giò',N'Hủ tiếu','https://bitly3s.com/4kjfmo',N'Quận 2, Tp.HCM',N'Nước dùng được hầm từ xương',5,50.000)
INSERT INTO STORE VALUES (N'Hủ tiếu bò viên',N'Hủ tiếu','https://bitly3s.com/xc1v6n',N'Quận 3, Tp.HCM',N'làm 100% từ bò thật',5,40.000)
INSERT INTO STORE VALUES (N'Hủ tiếu truyền thống',N'Hủ tiếu','https://bitly3s.com/sbjhb7',N'Quận 1, Tp.HCM',N'hương vị miền tây sông nước',5,40.000)
INSERT INTO STORE VALUES (N'Hủ tiếu khô',N'Hủ tiếu','https://bitly3s.com/58uxqq',N'Quận 1, Tp.HCM',N'Sợi hủ tiếu Mỹ Tho',5,40.000)

INSERT INTO STORE VALUES (N'Bún bò Huế',N'Bún bò Huế','https://bitly3s.com/iarqh8',N'Quận 1, Tp.HCM',N'Đúng chất vị Huế',5,40.000)
INSERT INTO STORE VALUES (N'Bún bò Huế cô Hoa',N'Bún bò Huế','https://bitly3s.com/jtsowf',N'Quận 1, Tp.HCM',N'Bún bò mỡ nổi',5,50.000)
INSERT INTO STORE VALUES (N'Bún bò Sài Gòn',N'Bún bò Huế','https://bitly3s.com/9q2o6h',N'Quận 2, Tp.HCM',N'Hương vị gần gũi',5,40.000)
INSERT INTO STORE VALUES (N'Bún bò Bến Bình Đông',N'Bún bò Huế','https://bitly3s.com/nd9v36',N'Quận 8, Tp.HCM',N'Bò tươi',5,50.000)
INSERT INTO STORE VALUES (N'Bún bò Huế số 2',N'Bún bò Huế','https://bitly3s.com/uq4bfj',N'Quận 1, Tp.HCM',N'Ngon nhì thành phố',5,40.000)

INSERT INTO STORE VALUES (N'Cơm gà 99',N'Cơm gà', 'https://bitly3s.com/0tet5d' ,N'Quận 1, Tp.HCM',N'Gà tươi',5,40.000)
INSERT INTO STORE VALUES (N'Cơm gà cây bông',N'Cơm gà', 'https://bitly3s.com/gqvb0y' ,N'Quận 2, Tp.HCM',N'Ngon',5,40.000)
INSERT INTO STORE VALUES (N'Cơm gà giòn',N'Cơm gà', 'https://bitly3s.com/z3ska5' ,N'Quận 5, Tp.HCM',N'Cơm gà tẩm bột chiên giòn',5,40.000)
INSERT INTO STORE VALUES (N'Chicken',N'Cơm gà','https://bitly3s.com/cakg6i',N'Quận 6, Tp.HCM',N'Gà theo món',5,40.000)
INSERT INTO STORE VALUES (N'Cơm gà vàng',N'Cơm gà','https://bitly3s.com/x80q9s',N'Quận 9, Tp.HCM',N'Gà tươi ướp nghệ',5,40.000)

INSERT INTO STORE VALUES (N'Bún thịt nướng số 1',N'Bún thịt nướng','https://bitly3s.com/cw777r',N'Quận 1, Tp.HCM',N'Ngon',5,40.000)
INSERT INTO STORE VALUES (N'Bún thịt nướng',N'Bún thịt nướng','https://bitly3s.com/d39ezu',N'Quận 2, Tp.HCM',N'Ngon',5,40.000)
INSERT INTO STORE VALUES (N'Bún thịt nướng 999 ',N'Bún thịt nướng','https://bitly3s.com/yk13vo',N'Quận 1, Tp.HCM',N'Ngon',5,40.000)
INSERT INTO STORE VALUES (N'Bún thịt nướng 888',N'Bún thịt nướng','https://bitly3s.com/1tl9a3',N'Quận 1, Tp.HCM',N'Ngon',5,40.000)
INSERT INTO STORE VALUES (N'Bún thịt nướng hẻm số 2',N'Bún thịt nướng','https://bitly3s.com/q9hxa8',N'Quận 5, Tp.HCM',N'Ngon',5,40.000)

INSERT INTO STORE VALUES (N'Bánh mì thịt',N'Bánh mì','https://bitly3s.com/ymiahm',N'Quận 3, Tp.HCM',N'Ngon',5,20.000)
INSERT INTO STORE VALUES (N'Bánh mì cá',N'Bánh mì','https://bitly3s.com/orkkqx',N'Quận 1, Tp.HCM',N'Ngon',5,20.000)
INSERT INTO STORE VALUES (N'Bánh mì trứng',N'Bánh mì','https://bitly3s.com/nwr6da',N'Quận 3, Tp.HCM',N'Ngon',5,25.000)
INSERT INTO STORE VALUES (N'Bánh mì cô Ba',N'Bánh mì','https://bitly3s.com/cod8fh',N'Quận 5, Tp.HCM',N'Ngon',5,20.000)
INSERT INTO STORE VALUES (N'Bánh mì thịt nướng',N'Bánh mì','https://bitly3s.com/0ecvuf',N'Quận 3, Tp.HCM',N'Ngon',5,20.000)

INSERT INTO STORE VALUES (N'Bánh xèo rau rừng',N'Bánh xèo','https://bitly3s.com/zqvzps',N'Quận 4, Tp.HCM',N'Rau rừng 100%',5,30.000)
INSERT INTO STORE VALUES (N'Bánh xèo miền Tây',N'Bánh xèo','https://bitly3s.com/4shjvp',N'Quận 5, Tp.HCM',N'Hương vị quê nhà',5,30.000)
INSERT INTO STORE VALUES (N'Bánh xèo miền Trung',N'Bánh xèo','https://bitly3s.com/mu9ipr',N'Quận 8, Tp.HCM',N'Ngon',5,30.000)
INSERT INTO STORE VALUES (N'Bánh xèo 666',N'Bánh xèo','https://bitly3s.com/hmzvmf',N'Quận 3, Tp.HCM',N'Ngon',5,30.000)
INSERT INTO STORE VALUES (N'Bánh xèo tôm thịt',N'Bánh xèo','https://bitly3s.com/k5mfv1',N'Quận 6, Tp.HCM',N'Ngon',5,30.000)

INSERT INTO STORE VALUES (N'Bún đậu mắm tôm cây me',N'Bún đậu mắm tôm','https://bitly3s.com/bbuqgv',N'Quận 6, Tp.HCM',N'Ngon',5,50.000)
INSERT INTO STORE VALUES (N'Bún đậu mắm tôm cô Châu',N'Bún đậu mắm tôm','https://bitly3s.com/gky887',N'Quận 5, Tp.HCM',N'Ngon',5,50.000)
INSERT INTO STORE VALUES (N'Bún đậu mắm tôm Sạch',N'Bún đậu mắm tôm','https://bitly3s.com/rlbi7g',N'Quận 8, Tp.HCM',N'Ngon',5,50.000)
INSERT INTO STORE VALUES (N'Bún đậu mắm tôm bà lão',N'Bún đậu mắm tôm','https://bitly3s.com/sk6qtm',N'Quận 6, Tp.HCM',N'Ngon',5,50.000)
INSERT INTO STORE VALUES (N'Bún đậu mắm tôm quận 1',N'Bún đậu mắm tôm','https://bitly3s.com/bbuqgv',N'Quận 1, Tp.HCM',N'Ngon',5,50.000)
--SELECT * FROM STORE

--INSERT FEEDBACK
INSERT INTO FEEDBACK VALUES(N'Bánh xèo rau rừng',N'Customer1',N'Bánh xèo',5,N'Ngon, rau sạch tươi')
INSERT INTO FEEDBACK VALUES(N'Bún thịt nướng số 1',N'Customer5',N'Bún thịt nướng',5,N'Thịt nướng khô')
INSERT INTO FEEDBACK VALUES(N'Cơm gà vàng',N'Customer4',N'Cơm gà',5,N'Gà ngon')
INSERT INTO FEEDBACK VALUES(N'Quán cơm bốn mùa',N'Customer8',N'Cơm sườn',5,N'Nước mắm ngon')
INSERT INTO FEEDBACK VALUES(N'Hủ tiếu bò viên',N'Customer8',N'Hủ tiếu',5,N'Bò viên dai ngon')
SELECT * FROM FEEDBACK
--INSERT B_ORDER
INSERT INTO B_ORDER VALUES('OD001',N'Nguyễn',N'An',N'Số 3, đường 2',N'Quận 3',N'Tp.HCM','0123456789',N'không ớt',5.000,20.000,85.000,'Customer1','SHOPAA1')
INSERT INTO B_ORDER VALUES('OD002',N'Nguyễn',N'Bình',N'Số 8, đường 10',N'Quận 1',N'Tp.HCM','0123456788',N'cho nhiều rau',10.000,20.000,50.000,'Customer3','SHOPAA1')
INSERT INTO B_ORDER VALUES('OD003',N'Nguyễn',N'Công',N'Số 7, đường 7',N'Quận 7',N'Tp.HCM','0123456787',N'không ớt',20.000,0,120.000,'Customer5',NULL)
--SELECT * FROM B_ORDER

--INSERT B_ORDERDETAIL
INSERT INTO B_ORDERDETAIL VALUES(N'Hủ tiếu',N'Hủ tiếu Giò','OD001',2,100.000)
INSERT INTO B_ORDERDETAIL VALUES(N'Bánh xèo',N'Bánh xèo tôm thịt','OD002',2,60.000)
INSERT INTO B_ORDERDETAIL VALUES(N'Bánh mì',N'Bánh mì cá','OD003',10,200.000)
--SELECT * FROM B_ORDERDETAIL
