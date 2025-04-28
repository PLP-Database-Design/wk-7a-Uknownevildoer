--QUESTION 1
CREATE TABLE Customer(
  OrderID INT
  CustomerName varchar(255)
);
CREATE TABLE ProductDetail(
  Products varchar(255)
);
INSERT INTO Customer(orderID, CustomerName)VALUES
  (101, 'John Doe')
  (102, 'Jane Smith')
  (103, 'Emily Clark');
INSERT INTO ProductDetail(Products) VALUES
  (Laptop)
  (Mouse)
  (Tablet)
  (Keyboard)
  (Mouse)
  (Phone);
--QUESTION 2
CREATE TABLE Orders (
   OrderID INT PRIMARY KEY,
   CustomerName VARCHAR(255)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
