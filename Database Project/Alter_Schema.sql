/*
Authors: Theodore Tsimiklis, Peter Fishman, Saqib Syed
Date: April 28th 2021
The point of this schema is to add the constraints to the table with alter table statements since it does
not work by adding it in the table directly. When running the program for the the create table, it runs it in order so it 
gives an error when we have the foreign key inside since each table has a foreign key.
*/

--User Account
ALTER TABLE User_Account
ADD p_info_Id INT;
ALTER TABLE User_Account
ADD FOREIGN KEY(p_info_Id) REFERENCES Personal_Info(p_info_Id);

--Checkout Cart
ALTER TABLE Checkout_Cart
ADD user_account_id INT;
ALTER TABLE Checkout_Cart
ADD part_id INT;
ALTER TABLE Checkout_Cart
ADD sales_id INT;
ALTER TABLE Checkout_Cart
ADD FOREIGN KEY(user_account_id) REFERENCES User_Account(user_account_id);
ALTER TABLE Checkout_Cart
ADD FOREIGN KEY(part_Id) REFERENCES Computer_Parts(part_Id);
ALTER TABLE Checkout_Cart
ADD FOREIGN KEY(Sales_Id) REFERENCES Sales(Sales_Id);

--Computer Parts
ALTER TABLE Computer_Parts
ADD retailer_Id INT;
ALTER TABLE Computer_Parts
ADD FOREIGN KEY(retailer_Id) REFERENCES Retailer(retailer_Id);

--Sales
ALTER TABLE SALES
ADD part_ID INT;
ALTER TABLE SALES
ADD FOREIGN KEY(Part_ID) REFERENCES Computer_Parts(Part_ID);

--Orders
ALTER TABLE ORDERS
ADD User_Account_ID INT;
ALTER TABLE ORDERS
ADD FOREIGN KEY(User_Account_ID) REFERENCES User_Account(User_Account_ID);

--Track Orders
ALTER TABLE Track_Orders
ADD order_Id INT;
ALTER TABLE Track_Orders
ADD FOREIGN KEY(order_Id) REFERENCES ORDERS(order_Id);

--Shipment
ALTER TABLE SHIPMENT
ADD order_id INT;
ALTER TABLE SHIPMENT
ADD FOREIGN KEY(order_id) REFERENCES orders(order_id);

--Customer Support
ALTER TABLE Customer_Support
ADD user_account_id INT;
ALTER TABLE Customer_Support
ADD FOREIGN KEY(user_account_id) REFERENCES user_account(user_account_id);