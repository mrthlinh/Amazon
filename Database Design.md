(Edited 1/30)
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
- Shipping Address (up till street)
- Shipping State (->Sales Tax)

Product
-	Product ID (PK)
- Price
-	Quantity
- Category (Electronics, Clothes, Food)
- Special Offer Discount (?)

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
