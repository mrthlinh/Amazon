ALTER TABLE `yamazone`.`address` 
CHANGE COLUMN `shipping_state` `shipping_state` VARCHAR(45) NULL DEFAULT NULL ;

ALTER TABLE `yamazone`.`address` 
ADD CONSTRAINT `address_ibfk_1`
  FOREIGN KEY (`userID`)
  REFERENCES `yamazone`.`customter` (`userID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`address` 
ADD CONSTRAINT `address_ibfk_2`
  FOREIGN KEY (`shipping_state`)
  REFERENCES `yamazone`.`saletax` (`shipping_state`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`creditcard` 
ADD CONSTRAINT `creditcard_ibfk_1`
  FOREIGN KEY (`userID`)
  REFERENCES `yamazone`.`customter` (`userID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`evaluation` 
ADD CONSTRAINT `evalutation_ibfk_2`
  FOREIGN KEY (`userID`)
  REFERENCES `yamazone`.`customter` (`userID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`evaluation` 
ADD CONSTRAINT `evalutation_ibfk_1`
  FOREIGN KEY (`productID`)
  REFERENCES `yamazone`.`product` (`productID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`inventory` 
ADD CONSTRAINT `inventory_ibfk_1`
  FOREIGN KEY (`productID`)
  REFERENCES `yamazone`.`product` (`productID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`inventory` 
ADD CONSTRAINT `inventory_ibfk_2`
  FOREIGN KEY (`supplierID`)
  REFERENCES `yamazone`.`supplier` (`supplierID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`order` 
ADD COLUMN `order_amount` DECIMAL(10,2) NULL AFTER `supplierID`;

ALTER TABLE `yamazone`.`order` 
ADD CONSTRAINT `order_ibfk_1`
  FOREIGN KEY (`userID`)
  REFERENCES `yamazone`.`customter` (`userID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`order` 
ADD CONSTRAINT `order_ibfk_2`
  FOREIGN KEY (`supplierID`)
  REFERENCES `yamazone`.`supplier` (`supplierID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

CREATE TABLE `yamazone`.`order_item` (
  `orderID` INT(11) NOT NULL,
  `productID` INT(11) NOT NULL,
  `product_Quantity` INT(11) NOT NULL,
  `supplierID` INT(11) NOT NULL);

ALTER TABLE `yamazone`.`order_item` ADD CONSTRAINT `order_item_ibfk_1`
  FOREIGN KEY (`orderID`)
  REFERENCES `yamazone`.`order` (`orderID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`order_item` ADD CONSTRAINT `order_item_ibfk_2`
  FOREIGN KEY (`productID`)
  REFERENCES `yamazone`.`product` (`productID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `yamazone`.`order_item` ADD CONSTRAINT `order_item_ibfk_3`
  FOREIGN KEY (`supplierID`)
  REFERENCES `yamazone`.`supplier` (`supplierID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


