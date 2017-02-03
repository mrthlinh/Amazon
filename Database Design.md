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
- Username
- Password
- First Name
- Last Name (I still think it should be two variables)
- Shipping Address (up till street)
- Shipping State (->Sales Tax)

Credit Card Info (could be an entity, 1:M relationship with customer)
- User ID

Product
-	Product ID (PK)
- Price
-	Quantity
- Description
- Category (Electronics, Clothes, Food)
- Average Rating
- Primary Supplier

Inventory
- Product ID
- Supplier ID
- Price
- Quantity
- Special Offer Discount (?)

Evaluation
- product ID (PK)
- customer ID
- rate
- comments


Special Offer Discount (adjustable by admin)
- Index (PK)
- Discount % (60% off, 70% off)
- Discount end date

Order
-	Order ID (PK)
-	Order date
- Predicted arrival date (make it like 5~7 days)
-	Customer ID (FK)
-	Shipping Status (changeable only for admin)
- Supplier

Sales Tax
-	Shipping State (->Customer)
-	Postal Code (PK)
-	Tax amount
