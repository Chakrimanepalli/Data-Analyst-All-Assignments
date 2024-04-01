CREATE DEFINER=`root`@`localhost` FUNCTION `assignment-3.2`(cn int) RETURNS varchar(25) CHARSET utf8mb4
BEGIN
     declare status varchar(25);
     declare pa numeric;
     set pa=(select sum(amount) from payments where customernumber = cn);
     
     if pa > 50000 then
        set status = 'platinum';
     elseif (pa > 50000 or pa < 25000) then 
		set status = 'gold';
      elseif pa > 25000 then 
          set status = 'silver';
      end if;    
     RETURN (status);
END