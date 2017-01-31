CS6360 Database Design

Team 2: Linh Truong, Sheng-Lin Chen

HW1 (Due Feb. 3)
List down all possible entities and attributes (Customer, Product)

Entity
-	Attribute 1
-	Attribute 2
-	…

Customer
-	Customer/User ID (PK)
-	Isadmin (for administrators to login update/delete user and change shipment details)
-	Credit Card Info (could be an entity, 1:M relationship with customer)
- Username
- Password
- First name
- Last name
- Email
- Sex
- Birthday

Product
-	Product ID (PK)
-	Quantity

Order
-	Order ID (PK)
-	Order date
-	Customer ID (FK)
-	Shipping Status (changeable only for admin)

Sales Tax
-	State
-	Postal Code (PK)
-	Tax amount
