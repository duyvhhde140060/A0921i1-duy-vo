use classicmodels;
delimiter //
create procedure getCusById
(in cusNum int)
begin 
SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;
call getCusById(175);