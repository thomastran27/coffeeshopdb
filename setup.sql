CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Product_Description VARCHAR(255),
    size VARCHAR(50),
    Price DECIMAL(10, 2)
);

CREATE TABLE Shops (
    ShopID INT PRIMARY KEY,
    Address VARCHAR(255)
);

CREATE TABLE Stock (
    ProductID INT,
    ShopID INT,
    quantity INT,
    PRIMARY KEY (ProductID, ShopID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (ShopID) REFERENCES Shops(ShopID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Phone_Number VARCHAR(10)
);

CREATE TABLE Barista (
    BaristaID INT PRIMARY KEY,
    Barista_name VARCHAR(255)
);

CREATE TABLE Purchase (
    PurchaseID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    ShopID INT,
    BaristaID INT,
    Date DATE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BaristaID) REFERENCES Barista(BaristaID),
    FOREIGN KEY (ShopID) REFERENCES Shops(ShopID)
);

CREATE TABLE Purchase_Detail (
    ProductID INT,
    PurchaseID INT,
    quantity INT,
    PRIMARY KEY (ProductID, PurchaseID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (PurchaseID) REFERENCES Purchase(PurchaseID)
);


-- INSERT INTO Barista (BaristaID, Barista_name) VALUES ('1230', 'Michael Fleming');
-- INSERT INTO Barista (BaristaID, Barista_name) VALUES ('2131', 'Danielle Martinez');
-- INSERT INTO Barista (BaristaID, Barista_name) VALUES ('02921', 'Xavier Donnatella');

-- INSERT INTO Shops(ShopID, Address) VALUES ('1', '57382 Cof Road');
-- INSERT INTO Shops(ShopID, Address) VALUES ('2', '10032 St');
-- INSERT INTO Shops(ShopID, Address) VALUES ('3', '19090 E St');

-- INSERT INTO Product (ProductID, Product_Description, size, Price) VALUES ('301', 'Sweet Ice Coffee', 'Venti', '5.20');
-- INSERT INTO Product (ProductID, Product_Description, size, Price) VALUES ('302', 'Latte', 'Grande', '4.00');
-- INSERT INTO Product (ProductID, Product_Description, size, Price) VALUES ('303', 'Frappuccino', 'Tall', '2.80');

-- INSERT INTO Stock(ProductID, ShopID, quantity) VALUES ('301', '1', '50');
-- INSERT INTO Stock(ProductID, ShopID, quantity) VALUES ('302', '1', '34');
-- INSERT INTO Stock(ProductID, ShopID, quantity) VALUES ('303', '1', '78');
-- INSERT INTO Stock(ProductID, ShopID, quantity) VALUES ('301', '2', '85');
-- INSERT INTO Stock(ProductID, ShopID, quantity) VALUES ('302', '2', '98');
-- INSERT INTO Stock(ProductID, ShopID, quantity) VALUES ('303', '2', '113');
-- INSERT INTO Stock(ProductID, ShopID, quantity) VALUES ('301', '3', '44');
-- INSERT INTO Stock(ProductID, ShopID, quantity) VALUES ('302', '3', '35');
-- INSERT INTO Stock(ProductID, ShopID, quantity) VALUES ('303', '3', '62');

-- INSERT INTO Customers (CustomerID, Name, Address, Phone_Number) VALUES ('40123', 'John Smith', '3213 One Rd.', '3245874098');
-- INSERT INTO Customers (CustomerID, Name, Address, Phone_Number) VALUES ('40124', 'Andreas Polus', '412 Downtown South Rd.', '4083259012');
-- INSERT INTO Customers (CustomerID, Name, Address, Phone_Number) VALUES ('40125', 'Ian Hyme', '812 Himephy St.', '3127896923');

-- INSERT INTO Purchase (PurchaseID, ProductID, CustomerID, ShopID, BaristaID, Date) VALUES ('98231', '302', '40125', '1', '1230', '2023-03-23');
-- INSERT INTO Purchase (PurchaseID, ProductID, CustomerID, ShopID, BaristaID, Date) VALUES ('98232', '301', '40124', '2', '2131', '2023-03-29');
-- INSERT INTO Purchase (PurchaseID, ProductID, CustomerID, ShopID, BaristaID, Date) VALUES ('98233', '301', '40124', '1', '1230', '2023-03-29');
-- INSERT INTO Purchase (PurchaseID, ProductID, CustomerID, ShopID, BaristaID, Date) VALUES ('98234', '303', '40125', '3', '2921', '2023-04-1');
-- INSERT INTO Purchase (PurchaseID, ProductID, CustomerID, ShopID, BaristaID, Date) VALUES ('98235', '302', '40125', '3', '2921', '2023-04-1');

-- INSERT INTO Purchase_Detail (ProductID, PurchaseID, quantity) VALUES ('301', '98232', '5');
-- INSERT INTO Purchase_Detail (ProductID, PurchaseID, quantity) VALUES ('301', '98233', '2');
-- INSERT INTO Purchase_Detail (ProductID, PurchaseID, quantity) VALUES ('303', '98234', '1');
-- INSERT INTO Purchase_Detail (ProductID, PurchaseID, quantity) VALUES ('302', '98235', '2')
-- INSERT INTO Purchase_Detail (ProductID, PurchaseID, quantity) VALUES ('303', '98234', '1');