use classicmodels;
create table Productss
(
Id int,
productCode varchar(50),
productName varchar(50),
productPrice varchar(50),
productAmount varchar(50),
productDescription varchar(50),
productStatus varchar(50)
);
CREATE INDEX Unique_Index  ON Productss(productCode);
CREATE INDEX compose_index  ON Productss(productName,productPrice);
explain select * from Productss where productCode = 4;
create view info AS 
select productCode, productName, productPrice, productStatus from Productss;
select * from info;
select * from Productss;
INSERT INTO info (productCode, productName, productPrice,productStatus)
VALUES (1, 1, 1,1);
DROP VIEW info;
DELIMITER //
CREATE PROCEDURE All_product()

BEGIN

  SELECT * FROM Productss;

END //

DELIMITER ;
DELIMITER //
CREATE PROCEDURE add_product()

BEGIN

  INSERT INTO Productss (Id, productCode, productName,productPrice, productAmount,productDescription,productStatus)
VALUES (2, 2, 2,2,2,2,2);

END //

DELIMITER ;
call add_product();

DELIMITER //
CREATE PROCEDURE update_product(IN ids int)

BEGIN

  UPDATE Productss set Id = 3, productCode = '3', productName = '3',productPrice = '3', productAmount = '3',
  productDescription = '3' ,productStatus ='3' where id = 2;


END //

DELIMITER ;

call update_product(2);

DELIMITER //
CREATE PROCEDURE delete_product(IN ids int)

BEGIN

DELETE  FROM Productss
  WHERE id = ids;


END //

DELIMITER ;
call delete_product(3);



