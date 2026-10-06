-- Retail Marketing Analytics Database
-- Step 2: insert the sample data
-- Author: Nouviboth Ra
-- Sample data only: created for a retail case study, not real company data.

INSERT INTO USER_TYPE VALUES
  (1, 'Premium',  'High-value loyalty members with exclusive early access'),
  (2, 'Existing', 'Returning customers with prior purchase history'),
  (3, 'New',      'First-time registrations within the last 90 days');

INSERT INTO USER VALUES
  ( 1,'Alice','Chen','alice.chen@email.com','F','12 Pitt St','Sydney','2000','2022-03-10',1),
  ( 2,'Bob','Smith','bob.smith@email.com','M','45 Collins St','Melbourne','3000','2022-07-22',2),
  ( 3,'Carol','Lee','carol.lee@email.com','F','8 Queen St','Brisbane','4000','2024-05-30',3),
  ( 4,'David','Wu','david.wu@email.com','M','22 George St','Sydney','2000','2021-11-10',1),
  ( 5,'Eva','Park','eva.park@email.com','F','3 Murray St','Perth','6000','2023-09-05',2),
  ( 6,'Frank','Tan','frank.tan@email.com','M','77 King William St','Adelaide','5000','2024-04-19',3),
  ( 7,'Grace','Kim','grace.kim@email.com','F','15 Market St','Sydney','2000','2021-05-30',1),
  ( 8,'Henry','Lim','henry.lim@email.com','M','9 Elizabeth St','Hobart','7000','2023-03-11',2),
  ( 9,'Isla','Brown','isla.brown@email.com','F','31 Swanston St','Melbourne','3000','2024-06-01',3),
  (10,'James','Ng','james.ng@email.com','M','5 York St','Sydney','2000','2022-12-25',1),
  (11,'Karen','Liu','karen.liu@email.com','F','18 Ann St','Brisbane','4000','2023-02-14',2),
  (12,'Leo','Nguyen','leo.nguyen@email.com','M','64 Hay St','Perth','6000','2024-05-05',3),
  (13,'Mia','Johnson','mia.johnson@email.com','F','2 Bridge St','Sydney','2000','2021-08-20',1),
  (14,'Nathan','Patel','nathan.patel@email.com','M','88 Bourke St','Melbourne','3000','2023-06-30',2),
  (15,'Olivia','Scott','olivia.scott@email.com','F','11 Rundle Mall','Adelaide','5000','2024-06-02',3),
  (16,'Paul','Zhang','paul.zhang@email.com','M','33 Castlereagh St','Sydney','2000','2022-01-18',1),
  (17,'Quinn','Marsh','quinn.marsh@email.com','F','7 Smith St','Darwin','0800','2023-10-10',2),
  (18,'Ryan','Ho','ryan.ho@email.com','M','19 Northbourne Ave','Canberra','2600','2024-05-28',3),
  (19,'Sophie','Adams','sophie.adams@email.com', 'F','56 Flinders St','Melbourne','3000','2021-04-03',1),
  (20,'Tom','Walker','tom.walker@email.com','M','41 Crown St','Sydney','2000','2023-11-15',2);

INSERT INTO CAMPAIGN VALUES
  (1, 'EOFY Sale 2024','2024-06-01','2024-06-30',5000.00,'Drive EOFY revenue and clearance via social media'),
  (2, 'Winter Warmup','2024-07-01','2024-07-31',3000.00,'Promote winter apparel and knitwear collection'),
  (3, 'Spring Launch','2024-09-01','2024-09-30',2500.00,'New season awareness and product discovery'),
  (4, 'Summer Essentials','2024-11-01','2024-11-30',3500.00,'Drive summer fashion and beauty sales pre-Christmas'),
  (5, 'Brand Awareness Q1','2024-03-01','2024-03-31',1500.00,'Grow social media following and reach');

INSERT INTO ADVERTISEMENT VALUES
  ( 1, 1, 'EOFY IG Story','Story','Image','Shop Now','2024-06-01', 'Instagram', 101),
  ( 2, 1, 'EOFY FB Feed Post','Feed Post','Video','Buy Now','2024-06-02', 'Facebook',102),
  ( 3, 1, 'EOFY X Promoted Tweet', 'Tweet','Text+Image', 'Explore','2024-06-03', 'X',103),
  ( 4, 1, 'EOFY IG Reel','Reel','Video','Shop the Sale','2024-06-05', 'Instagram', 101),
  ( 5, 1, 'EOFY FB Carousel','Carousel','Image','View All','2024-06-06', 'Facebook',  102),
  ( 6, 2, 'Winter IG Reel','Reel','Video','View Range','2024-07-01', 'Instagram', 101),
  ( 7, 2, 'Winter FB Carousel','Carousel','Image','Shop Now','2024-07-02', 'Facebook',102),
  ( 8, 2, 'Winter X Post','Tweet','Text+Image', 'Stay Warm','2024-07-04', 'X',103),
  ( 9, 3, 'Spring IG Story','Story','Image','Discover','2024-09-01', 'Instagram', 101),
  (10, 3, 'Spring FB Post','Feed Post', 'Video','Shop Now','2024-09-03', 'Facebook',  102),
  (11, 3, 'Spring X Campaign','Tweet','Text+Image', 'Explore New','2024-09-05', 'X',103),
  (12, 4, 'Summer IG Story','Story','Image','Get Summer Ready', '2024-11-01', 'Instagram', 101),
  (13, 4, 'Summer FB Video','Feed Post', 'Video','Shop Now','2024-11-02','Facebook',102),
  (14, 5, 'Brand IG Post','Feed Post', 'Image','Follow Us','2024-03-01','Instagram',101),
  (15, 5, 'Brand FB Post','Feed Post', 'Image','Learn More','2024-03-02','Facebook',102);

INSERT INTO PRODUCT_CATEGORY VALUES
  ( 1, 'Outerwear','Coats, jackets, and outer layers'),
  ( 2, 'Dresses','Casual and formal dress styles'),
  ( 3, 'Footwear','Shoes, boots, and sneakers'),
  ( 4, 'Knitwear','Jumpers, cardigans, and knit tops'),
  ( 5, 'Blazers','Structured blazers and suit jackets'),
  ( 6, 'Jewellery','Earrings, necklaces, rings, and bracelets'),
  ( 7, 'Beauty','Skincare, makeup, and fragrance products'),
  ( 8, 'Accessories','Scarves, bags, belts, and other accessories'),
  ( 9, 'Suiting','Formal suits, trousers, and suit separates'),
  (10, 'Fragrance','Perfumes, colognes, and gift sets'),
  (11, 'Homewares','Bedding, cushions, and home decor'),
  (12, 'Activewear','Sports and gym clothing and footwear'),
  (13, 'Shirts','Casual and formal shirts and blouses'),
  (14, 'Swimwear','Bikinis, one-pieces, and swim accessories'),
  (15, 'Loungewear','Comfortable at-home clothing and sleepwear');

INSERT INTO PRODUCT VALUES
  ('RT-001','Classic Wool Coat','Country Road',349.00,1),
  ('RT-002','Silk Midi Dress','Witchery',229.00,2),
  ('RT-003','Leather Ankle Boots','Windsor Smith',299.00,3),
  ('RT-004','Merino Knit Jumper','House Brand',179.00,4),
  ('RT-005','Linen Blazer','Calibre',389.00,5),
  ('RT-006','Gold Hoop Earrings','Fairley',89.00,6),
  ('RT-007','Premium Skincare Set','Estee Lauder',220.00,7),
  ('RT-008','Tailored Suit Trousers','Hugo Boss',319.00,9),
  ('RT-009','Floral Wrap Dress','Zimmermann',495.00,2),
  ('RT-010','White Linen Shirt','Assembly Label',149.00,13),
  ('RT-011','Leather Tote Bag','Coach',550.00,8),
  ('RT-012','Perfume Gift Set','Chanel',310.00,10),
  ('RT-013','Running Sneakers','Adidas',189.00,3),
  ('RT-014','Cashmere Scarf','House Brand',129.00,8),
  ('RT-015','Anti-Aging Eye Cream','La Mer',185.00,7),
  ('RT-016','Egyptian Cotton Sheet Set','House Brand',289.00,11),
  ('RT-017','Yoga Pants','Lululemon',149.00,12),
  ('RT-018','Classic Bikini Set','Seafolly',179.00,14),
  ('RT-019','Satin Pyjama Set','Peter Alexander',129.00,15),
  ('RT-020','Two-Piece Suit','Calibre',699.00,9),
  ('RT-021','Floral Blouse','Witchery',119.00,13),
  ('RT-022','Eau de Parfum 50ml','Chanel',245.00,10);

INSERT INTO USER_ORDER VALUES
  (1001,1,'2024-06-05','Completed',438.00),
  (1002,2,'2024-06-10','Completed',229.00),
  (1003,3,'2024-06-12','Completed',299.00),
  (1004,4,'2024-06-15','Completed',568.00),
  (1005,5,'2024-07-03','Completed',179.00),
  (1006,1,'2024-07-08','Completed',389.00),
  (1007,7,'2024-06-20','Completed',388.00),
  (1008,6,'2024-09-05','Pending',220.00),
  (1009,8,'2024-06-22','Completed',495.00),
  (1010,10,'2024-06-25','Completed',869.00),
  (1011,11,'2024-07-10','Completed',308.00),
  (1012,13,'2024-06-18','Completed',550.00),
  (1013,14,'2024-07-15','Completed',438.00),
  (1014,16,'2024-06-28','Completed',639.00),
  (1015,19,'2024-09-12','Completed',495.00),
  (1016,2,'2024-11-03','Completed',738.00),
  (1017,5,'2024-11-07','Completed',310.00),
  (1018,9,'2024-06-14','Cancelled',229.00),
  (1019,12,'2024-09-20','Pending',189.00),
  (1020,15,'2024-11-10','Completed',149.00),
  (1021,17,'2024-07-22','Completed',508.00),
  (1022,18,'2024-06-30','Completed',319.00),
  (1023,20,'2024-11-15','Completed',185.00),
  (1024,4,'2024-03-10','Completed',129.00),
  (1025,16,'2024-03-18','Completed',389.00);

INSERT INTO ORDER_PRODUCT VALUES
  (1001,'RT-001',1,349.00,0.00),
  (1001,'RT-006',1,89.00,10.00),
  (1002,'RT-002',1,229.00,0.00),
  (1003,'RT-003',1,299.00,0.00),
  (1004,'RT-005',1,389.00,0.00),
  (1004,'RT-004',1,179.00,20.00),
  (1005,'RT-004',1,179.00,0.00),
  (1006,'RT-005',1,389.00,0.00),
  (1007,'RT-003',1,299.00,0.00),
  (1007,'RT-006',1,89.00,10.00),
  (1008,'RT-007',1,220.00,0.00),
  (1009,'RT-009',1,495.00,0.00),
  (1010,'RT-011',1,550.00,0.00),
  (1010,'RT-001',1,349.00,30.00),
  (1011,'RT-004',1,179.00,0.00),
  (1011,'RT-014',1,129.00,0.00),
  (1012,'RT-011',1,550.00,0.00),
  (1013,'RT-001',1,349.00,30.00),
  (1013,'RT-006',2,89.00,10.00),
  (1014,'RT-008',1,319.00,0.00),
  (1014,'RT-010',2,149.00,29.00),
  (1015,'RT-009',1,495.00,0.00),
  (1016,'RT-012',1,310.00,0.00),
  (1016,'RT-007',1,220.00,0.00),
  (1017,'RT-012',1,310.00,0.00),
  (1018,'RT-002',1,229.00,0.00),
  (1019,'RT-013',1,189.00,0.00),
  (1020,'RT-010',1,149.00,0.00),
  (1021,'RT-004',1,179.00,0.00),
  (1021,'RT-014',1,129.00,0.00),
  (1022,'RT-008',1,319.00,0.00),
  (1023,'RT-015',1,185.00,0.00),
  (1024,'RT-014',1,129.00,0.00),
  (1025,'RT-005',1,389.00,0.00);

INSERT INTO PAYMENT VALUES
  -- Single full payments
  ( 1,1001,'Credit Card',438.00,'2024-06-05 10:23:00'),
  ( 2,1002,'Credit Card',229.00,'2024-06-10 14:05:00'),
  ( 3,1003,'PayPal',299.00,'2024-06-12 09:30:00'),
  ( 4,1005,'Credit Card',179.00,'2024-07-03 13:00:00'),
  ( 5,1006,'Credit Card',389.00,'2024-07-08 11:15:00'),
  ( 6,1007,'PayPal',388.00,'2024-06-20 16:40:00'),
  ( 7,1008,'Credit Card',220.00,'2024-09-05 13:00:00'),
  ( 8,1009,'Credit Card',495.00,'2024-06-22 10:00:00'),
  ( 9,1011,'PayPal',308.00,'2024-07-10 15:20:00'),
  (10,1012,'Credit Card',550.00,'2024-06-18 08:45:00'),
  (11,1013,'Credit Card',438.00,'2024-07-15 12:30:00'),
  (12,1015,'PayPal',495.00,'2024-09-12 09:10:00'),
  (13,1017,'Credit Card',310.00,'2024-11-07 14:00:00'),
  (14,1018,'Credit Card',229.00,'2024-06-14 10:05:00'),
  (15,1019,'PayPal',189.00,'2024-09-20 16:30:00'),
  (16,1020,'Credit Card',149.00,'2024-11-10 11:00:00'),
  (17,1022,'Credit Card',319.00,'2024-06-30 09:00:00'),
  (18,1023,'PayPal',185.00,'2024-11-15 13:45:00'),
  (19,1024,'Credit Card',129.00,'2024-03-10 10:30:00'),
  -- Afterpay instalments — Order 1004 split into 4 payments of $142
  (20,1004,'Afterpay',142.00,'2024-06-15 09:00:00'),
  (21,1004,'Afterpay',142.00,'2024-06-29 09:00:00'),
  (22,1004,'Afterpay',142.00,'2024-07-13 09:00:00'),
  (23,1004,'Afterpay',142.00,'2024-07-27 09:00:00'),
  -- Afterpay instalments — Order 1010 split into 4 payments of $217.25
  (24,1010,'Afterpay',217.25,'2024-06-25 10:00:00'),
  (25,1010,'Afterpay',217.25,'2024-07-09 10:00:00'),
  (26,1010,'Afterpay',217.25,'2024-07-23 10:00:00'),
  (27,1010,'Afterpay',217.25,'2024-08-06 10:00:00'),
  -- Afterpay instalments — Order 1014 split into 2 payments
  (28,1014,'Afterpay',319.50,'2024-06-28 11:00:00'),
  (29,1014,'Afterpay',319.50,'2024-07-12 11:00:00'),
  -- Afterpay instalments — Order 1016 split into 2 payments
  (30,1016,'Afterpay',369.00,'2024-11-03 09:30:00'),
  (31,1016,'Afterpay',369.00,'2024-11-17 09:30:00'),
  -- Afterpay instalments — Order 1021 split into 2 payments
  (32,1021,'Afterpay',254.00,'2024-07-22 14:00:00'),
  (33,1021,'Afterpay',254.00,'2024-08-05 14:00:00'),
  -- Afterpay single payment — Order 1025
  (34,1025,'Afterpay',389.00,'2024-03-18 10:00:00');

INSERT INTO USER_ADVERTISEMENT VALUES
  ( 1,1,1,'2024-06-02 09:15:00','Click'),
  ( 2,2,2,'2024-06-03 14:22:00','Click'),
  ( 3,3,3,'2024-06-04 10:05:00','View'),
  ( 4,4,1,'2024-06-05 16:30:00','Click'),
  ( 5,5,6,'2024-07-02 11:00:00','Click'),
  ( 6,1,2,'2024-06-06 08:45:00','Click'),
  ( 7,6,7,'2024-07-03 13:10:00','View'),
  ( 8,7,1,'2024-06-18 17:20:00','Click'),
  ( 9,8,9,'2024-09-02 09:00:00','View'),
  (10,2,6,'2024-07-05 15:00:00','Click'),
  (11,9,2,'2024-06-13 12:00:00','View'),
  (12,10,1,'2024-06-24 10:30:00','Click'),
  (13,10,4,'2024-06-25 11:00:00','Click'),
  (14,11,6,'2024-07-09 14:00:00','Click'),
  (15,11,7,'2024-07-10 09:30:00','View'),
  (16,12,9,'2024-09-19 16:00:00','View'),
  (17,13,5,'2024-06-17 08:00:00','Click'),
  (18,13,1,'2024-06-18 09:15:00','Click'),
  (19,14,7,'2024-07-14 13:45:00','Click'),
  (20,15,10,'2024-09-11 10:00:00','View'),
  (21,16,4,'2024-06-27 07:50:00','Click'),
  (22,16,5,'2024-06-27 08:00:00','Click'),
  (23,17,8,'2024-07-21 15:15:00','View'),
  (24,17,6,'2024-07-22 16:00:00','Click'),
  (25,18,3,'2024-06-29 11:20:00','View'),
  (26,19,9,'2024-09-11 14:00:00','Click'),
  (27,20,12,'2024-11-14 10:30:00','Click'),
  (28,2,13,'2024-11-02 09:00:00','Click'),
  (29,5,12,'2024-11-06 17:00:00','Click'),
  (30,4,14,'2024-03-09 10:00:00','View');

INSERT INTO ADVERTISEMENT_PRODUCT VALUES
  ( 1,'RT-001'), ( 1,'RT-006'), ( 1,'RT-014'),
  ( 2,'RT-002'), ( 2,'RT-005'), ( 2,'RT-009'),
  ( 3,'RT-003'), ( 3,'RT-008'),
  ( 4,'RT-001'), ( 4,'RT-004'), ( 4,'RT-010'),
  ( 5,'RT-004'), ( 5,'RT-008'), ( 5,'RT-005'),
  ( 6,'RT-004'), ( 6,'RT-001'),
  ( 7,'RT-014'), ( 7,'RT-004'),
  ( 9,'RT-009'), ( 9,'RT-002'),
  (10,'RT-009'),
  (12,'RT-007'), (12,'RT-015'),
  (13,'RT-012'), (13,'RT-007'),
  (14,'RT-005'), (14,'RT-011'),
  (15,'RT-009'), (15,'RT-002');

INSERT INTO CAMPAIGN_ANALYTICS VALUES
-- EOFY Sale 2024 — Instagram Story (Ads_ID 1)
( 1,1,1,'2024-06-07',12000, 3200, 2800, 23.33,3,10.71,1125.00,900.00, 0.32, 125.00),
( 2,1,1,'2024-06-14',14500, 3800, 3200, 22.07,4,12.50,1512.00,900.00, 0.28, 168.00),
( 3,1,1,'2024-06-21',13200, 3500, 2950, 22.35,3,10.17,987.00,900.00, 0.31, 109.67),
-- EOFY Sale 2024 — Facebook Feed Post (Ads_ID 2)
( 4,1,2,'2024-06-07',9800, 2400, 1900, 19.39,2,10.53,458.00,700.00,0.37,65.43),
( 5,1,2,'2024-06-14',10500, 2800, 2100, 20.00,3,14.29,867.00,700.00,0.33,123.86),
-- EOFY Sale 2024 — X Promoted Tweet (Ads_ID 3)
( 6,1,3,'2024-06-07',8200,1200,650,7.93,0,0.00,0.00,350.00,0.54,0.00),
( 7,1,3,'2024-06-14',7900,1100,580,7.34,0,0.00,0.00,350.00,0.60,0.00),
-- Winter Warmup — Instagram Reel (Ads_ID 6)
( 8,2,6,'2024-07-07', 11000,2900, 2500, 22.73,2,8.00,697.00,850.00,0.34,82.00),
( 9,2,6,'2024-07-14', 12300,3100, 2700, 21.95,3,11.11,876.00,850.00,0.31,103.06),
-- Winter Warmup — Facebook Carousel (Ads_ID 7)
(10,2,7,'2024-07-07',8500,2000, 1600, 18.82,2,12.50,746.00,700.00,0.44,106.57),
-- Spring Launch — Instagram Story (Ads_ID 9)
(11,3,9,'2024-09-07',9200,2100,  980, 10.65,1,10.20,495.00,700.00,0.71,70.71),
(12,3,9,'2024-09-14',8800,1900,  850,  9.66,0,0.00,0.00,700.00,0.82,0.00),
-- Summer Essentials — Instagram Story (Ads_ID 12)
(13,4,12,'2024-11-07',13500,3600,3100,22.96,3,9.68,1072.00,900.00,0.29,119.11),
-- Brand Awareness Q1 — Instagram Post (Ads_ID 14)
(14,5,14,'2024-03-07',7500,1800,420,5.60,1,2.38,389.00,450.00,1.07,86.44),
(15,5,14,'2024-03-14',8100,1950,480,5.93,1,2.08,129.00,450.00,0.94,28.67);
