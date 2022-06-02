create function f_Simple_Multiplication(@var1 INT, @var2 INT)
RETURNS INT
BEGIN
	RETURN(@var1*@var2)
END;

select dbo.f_Simple_Multiplication(10,5) 

create function f_Count_Profite(@productKey varchar)
returns int
begin
	declare @profit int;
	select @profit = selling_price - purchasing_price
	from Purchase_Items
	where purchase_id = @productKey
	Return(@profit)
END;

select * from Purchase_Items

select dbo.f_Count_Profite('20160301-00002')

function status

create function f_Display_All_Product ()
returns table 
as 
return(select * from Items)

select * from Items

select procedure 
from sys.sql_modules

show  status

drop function dbo.f_Count_Profite

create procedure sp_Display_CustomerData (@customer_id varchar(20))
as
begin 
	select * from Customers
	where customer_id = @customer_id
END;

select * from Customers

exec sp_Display_CustomerData 'CUS-000001'

create procedure luas(@masuk int, @sisi int output)
	as
	begin
		select @sisi=@masuk * @masuk;
	end

declare @count int;

exec luas 
	@masuk = 5,
	@sisi =  @count output;

select @count

delimiter 
create procedure luasPersegi(@masuk int, @sisi int output)
	as
	begin
		select @sisi=@masuk * @masuk;
	end
delimiter
