(Edited 1/30)
CS6360 Database Design

Team 2: Linh Truong, Sheng-Lin Chen, Shicheng Zhou, Chun Chen

HW1 (Due Feb. 3)
List down all possible entities and attributes (Customer, Product)

Entity
-	Attribute 1
-	Attribute 2
-	…

Customer
-	Customer/User ID (PK)
-	Isadmin (for administrators to login update/delete user and change shipment details)
- Username (email)
- Password
- First Name
- Last Name

Address
- Index ID (PK)
- Customer ID
- Receiver Name
- Shipping Address
- Shipping State
- Zip Code

Credit Card Info
- Index ID (PK)(because credit card number cannot be PK)
- Customer ID
- Full name
- Credit Card Number (12 digit)
- Security Code (3 digit)
- Expiriation Date (Month/Year)

Product
-	Product ID (PK)
- Description
- Category (Electronics, Clothes, Food)

Inventory
- Index ID (PK) - b/c one supplier can have multiple products and one products can have multiple suppliers
- Product ID
- Supplier ID
- Price
- Quantity

Evaluation
- comment id (PK)
- product ID
- username
- rate (1-5)
- comments

Cart
- Cart Index (PK)
- Customer ID
- Inventory Index ID

Order (make sure to delete from cart table)
-	Order ID (PK)
-	Order date
- Predicted arrival date (make it like 5~7 days)
-	Customer ID (FK)
-	Shipping Status (changeable only for admin)
- Supplier

Supplier
- Supplier ID (PK)
- Supplier Name
- Supplier Description

Sales Tax
-	Shipping State (->Customer)(PK)
-	Tax amount
