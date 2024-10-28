USE ShopDB; 

INSERT INTO Orders (CustomerID, Date)
VALUES (1, '2023-01-01');
SET @order_id = LAST_INSERT_ID();

START TRANSACTION; 

INSERT INTO OrderItems (OrderID, ProductID, Count)
VALUES (@order_id, 1, 1);
UPDATE Products
SET WarehouseAmount = WarehouseAmount - 1
WHERE ID = 1;

COMMIT; 
