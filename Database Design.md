CS6360 Database Design

Team 2: Linh Truong
HW1 (Due Feb. 3)
List down possible entities and attributes (Customer, Product)

Entity
-	Attribute 1
-	Attribute 2
-	…

Customer
-	Customer ID (PK)
-	Isadmin (for administrators to login and change shipment details)
-	Credit Card Info (could be an entity, 1:M relationship with customer)

Product
-	Product ID (PK)
-	Quantity

Order
-	Order ID (PK)
-	Order date
-	Customer ID (FK)
-	Shipping Status

Sales Tax
-	State
-	Postal Code (PK)
-	Tax amount
