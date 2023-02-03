/*
Authors: Peter Fishman, Saqib Syed, Theodore Tsimiklis
Date: April 23rd 2021
This schema is used to populate all 10 tables that are setup in the create_schema.sql file. We will also include all sequences needed to automatically increase the count on the IDs and everything else.
*/

--Personal Information
CREATE SEQUENCE seq_p_info_id
START WITH 1545
INCREMENT BY 1
MAXVALUE 9999;

--User Account
CREATE SEQUENCE seq_user_account_id
START WITH 6550
INCREMENT BY 1
MAXVALUE 9999;

--Retailer 
CREATE SEQUENCE seq_retailer_id
START WITH 4387
INCREMENT BY 1
MAXVALUE 9999;

--Populating the COMPUTER_PARTS table
CREATE SEQUENCE seq_part_id
START WITH 5130
INCREMENT BY 1
MAXVALUE 9999;
--Populating the SALES table
CREATE SEQUENCE seq_sales_id
START WITH 4387
INCREMENT BY 1
MAXVALUE 9999;

--Populating the ORDERS table
CREATE SEQUENCE seq_order_id
START WITH 4387
INCREMENT BY 1
MAXVALUE 9999;

--Populating the TRACK_ORDERS table
CREATE SEQUENCE seq_track_order_id
START WITH 2153
INCREMENT BY 1
MAXVALUE 9999;

--Shipment
CREATE SEQUENCE seq_shipment_id
START WITH 7989
INCREMENT BY 1
MAXVALUE 9999;

--Populating the CUSTOMER_SUPPORT table
CREATE SEQUENCE seq_customer_support_id
START WITH 9707
INCREMENT BY 1
MAXVALUE 9999;

--Checkout Cart
CREATE SEQUENCE seq_checkout_id
START WITH 3302
INCREMENT BY 1
MAXVALUE 9999;



--Pair 1
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '549 Duncan Avenue', 'Montreal', 'H0H 9A8', '(401)-864-9384');
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'Daniel', 'Cormier', 'BossDanny', '5247rbpbderd443j');

--Pair 2
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '4362 rue Chomedy', 'Laval', 'T4C 8M8', '(917)-548-6700');     
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'William', 'Dalwin', 'WilliamDaGod', 'k3sr6mrc07yhj8eo');

--Pair 3
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '1375 rue Salaberry', 'Montreal', 'J9L 6Y6', '(840)-701-4431');
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'Eli', 'Eerkens', 'EliGoated', 'o3tbbheet3d41t1n');

--Pair 4
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '4182 Bond Street', 'Montreal', 'G4W 1N9', '(347)-234-4562');
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'Dollie', 'Mathews', 'RibbitDMat', 'vwxga8e9f2ginqy4');

--Pair 5
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '1754 rue Decarie', 'Montreal', 'T9E 3P7', '(941)-692-0701');
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'Joel', 'Pozzi', 'MudPozzi', 'r3qm9ahzcno09ra4');

--Pair 6
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '8564 rue Bishop', 'Montreal', 'V2J 7S3', '(262)-448-7934');
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'Sarah', 'Woods', 'SarahHeartEmoji', 'cr625s4c7mhlhv24');

--Pair 7
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '1002 rue Samson', 'Laval', 'N8H 9C2', '(660)-620-8223');
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'Tracy', 'Salomon', 'TracyGamer', 'xdiewvfvgc72tp0f');

--Pair 8
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '2655 Notre Dame De Grace', 'Montreal', 'N4K 0P0', '(604)-874-4197');
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'Nisha', 'Berkley', 'NishaIsCool', '093ml5bunyk0yavf');

--Pair 9
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '1712 Sherbrooke', 'Montreal', 'G0M 0J8', '(683)-323-1984');
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'Uma', 'Houghton', 'UmaSparkles', 'b0x77zr5d5wthxoe');

--Pair 10
INSERT INTO PERSONAL_INFO(p_info_Id, ADDRESS, CITY, POSTAL_CODE, PHONE_NUMBER) VALUES (seq_p_info_id.NEXTVAL, '1580 Ahuntsic', 'Montreal', 'H4C 4E7', '(481)-467-8571');
INSERT INTO USER_ACCOUNT(USER_ACCOUNT_ID, P_INFO_ID, FIRST_NAME, LAST_NAME, USERNAME, user_password) VALUES (seq_user_account_id.NEXTVAL, seq_p_info_id.CURRVAL, 'Oscar', 'Burnett', 'OscarAward', 'id79id2kh2vrb3md');



--Retailer 

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'Asus', 55, '(514)-513-1239', 'Daniel Johnson', '5%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 675476, 'Motherboard', 439.91, 339.91, 15);
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 5, DATE'2020-09-07');

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'MSI', 26, '(514)-423-7314', 'Gregory Barbodyn', '0%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 937563, 'Graphics Card', 423.21, 319.91, 40); 
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 0, DATE'2021-01-01');

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'Dell', 105, '(514)-844-6654', 'Georgia Mariota', '10%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 262859, 'Monitor', 249.55, 130.21, 51);
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 2, DATE'2021-03-25');

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'Samsung', 733, '(514)-821-2461', 'Stefon Diggs', '2%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 567683, 'SSD', 601.99, 519.91, 10);
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 6, DATE'2021-08-04');

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'EVGA', 183, '(514)-914-9201', 'Joshua Allen', '0%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 794573, 'CPU Cooler', 439.91, 339.91, 15);
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 3, DATE'2021-12-07');

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'Gigabyte', 290, '(514)-375-4576', 'Karthus Bottson', '0%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 265532, 'Graphics Card', 150.91, 123.41, 52);
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 9, DATE'2021-03-25'); 

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'Intel', 212, '(514)-321-2431', 'Bobby Shen', '6%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 678420, 'CPU', 839.99, 709.91, 7);
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 7, DATE'2021-06-29');

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'Lian Li', 831, '(514)-706-5168', 'Dora Rose', '3%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 952371, 'Case', 809.91, 649.12, 25);
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 2, DATE'2021-07-12');

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'Seagate', 79, '(514)-190-4326', 'Theo Robertson', '3%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 967746, 'M.2 SSD',530.11, 409.91, 15);
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 3, DATE'2021-10-21');

INSERT INTO RETAILER(RETAILER_ID, RETAILER_NAME, INVENTORY, PHONE_NUMBER, REPRESENTATIVE, PRODUCT_DISCOUNT) VALUES (seq_retailer_id.NEXTVAL, 'NVIDIA', 372, '(514)-800-6147', 'Hakim Aboud', '8%');
INSERT INTO COMPUTER_PARTS (PART_ID, RETAILER_ID, SERIAL_NUMBER, PRODUCT_NAME, COST_PRICE, RETAIL_PRICE, PART_INVENTORY) VALUES (seq_part_id.NEXTVAL, seq_retailer_id.CURRVAL, 265824, 'Graphics Card', 819.91, 769.91, 9);
INSERT INTO SALES(SALES_ID, PART_ID, ITEM_DISCOUNT, SALE_LENGTH) VALUES (seq_sales_id.NEXTVAL, seq_part_id.CURRVAL, 4, DATE'2021-11-09');

--Populating the ORDERS table

--Populating the ORDERS table
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6550, DATE'2020-10-16', 530);
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6551, DATE'2020-12-16', 850);
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6552, DATE'2020-12-31', 680);
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6553, DATE'2021-02-27', 300);
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6554, DATE'2021-05-13', 130);
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6555, DATE'2021-06-03', 750); --6
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6556, DATE'2021-06-12', 500);
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6557, DATE'2021-06-24', 477);
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6558, DATE'2021-06-25', 80);
INSERT INTO ORDERS (ORDER_ID, User_Account_ID, date_recieved, FINAL_PRICE) VALUES (seq_order_id.NEXTVAL, 6559, DATE'2021-07-26', 75); 

--Populating the TRACK_ORDERS table
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4387, DATE'2020-10-09', 'Y');
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4388, DATE'2020-12-09', 'N');
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4389, DATE'2020-12-24', 'N');
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4390, DATE'2021-02-20', 'Y');
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4391, DATE'2021-05-06', 'Y'); --7
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4392, DATE'2021-05-28', 'N');
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4393, DATE'2021-06-05', 'Y');
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4394, DATE'2021-06-17', 'Y');
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4395, DATE'2021-06-18', 'N');
INSERT INTO TRACK_ORDERS (TRACKORDER_ID, ORDER_ID, ORDER_ETA, ORDER_HAS_SHIPPED) VALUES (seq_track_order_id.NEXTVAL, 4396, DATE'2021-07-19', 'Y');

--Shipment
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4387, DATE'2020-10-09', 'Standard');
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4388, DATE'2020-12-09', 'Standard');
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4389, DATE'2020-12-25', 'Standard');
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4390, DATE'2021-02-20', 'Express');
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4391, DATE'2021-05-06', 'Standard');
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4392, DATE'2021-05-28', 'Standard'); --8
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4393, DATE'2021-06-05', 'Express');
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4394, DATE'2021-06-17', 'Express');
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4395, DATE'2021-06-18', 'Standard');
INSERT INTO SHIPMENT(SHIPMENT_ID, ORDER_ID, Order_ETA_Date, SHIPPING_OPTION) VALUES (seq_shipment_id.NEXTVAL, 4396, DATE'2021-07-19', 'Standard');

--Populating the CUSTOMER_SUPPORT table
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6550,'OnlineTech', 374-581-7948, 'jeffersona@onlinetech.com');
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6551,'OnlineTech', 900-301-3246, 'jessicaf@onlinetech.com');
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6552,'OnlineTech', 430-488-2139, 'bobbys@onlinetech.com');
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6553,'OnlineTech', 432-285-1655, 'shmurdab@onlinetech.com');
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6554,'OnlineTech', 611-874-0831, 'alih@onlinetech.com');
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6555,'OnlineTech', 964-869-6038, 'hassanm@onlinetech.com');
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6556,'OnlineTech', 755-479-0818, 'mohameda@onlinetech.com');
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6557,'OnlineTech', 526-712-8179, 'jagmeets@onlinetech.com'); --9
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6558,'OnlineTech', 793-579-9176, 'zhigengx@onlinetech.com');
INSERT INTO CUSTOMER_SUPPORT(CUSTOMER_SUPPORT_ID, USER_ACCOUNT_ID, STORE_NAME, PHONE_NUMBER, EMAIL) VALUES (seq_customer_support_id.NEXTVAL, 6559,'OnlineTech', 354-802-8598, 'minht@onlinetech.com');

--Checkout Cart
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6550, 5130, 4387, 552, 530);
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6551, 5131, 4388, 1006, 850);
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6552, 5132, 4389, 742, 680);
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6553, 5133, 4390, 321, 300);
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6554, 5134, 4391, 142, 130);
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6555, 5135, 4392, 865, 750);
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6556, 5136, 4393, 699, 500); -- 10
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6557, 5137, 4394, 518, 477);
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6558, 5138, 4395, 85, 80);
INSERT INTO CHECKOUT_CART(CHECKOUT_ID, user_account_id, PART_ID, SALES_ID, TOTAL_PRICE, DISCOUNTED_PRICE) VALUES (seq_checkout_id.NEXTVAL, 6559, 5139, 4396, 100, 75);