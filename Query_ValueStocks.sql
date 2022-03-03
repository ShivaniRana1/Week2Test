do $$
declare
	counter1 integer=0;
	counter2 integer=0;
	counter3 integer=0;
	temp integer = 0;
	temp_int integer=0;
	f create_table;
begin
	
	for f in select company, fiscal_year
	       from create_table
	       limit 12
    loop 

	IF f.company = 'AHPC' THEN
		temp_int = f.fiscal_year;
		IF (temp_int - temp = 10001) THEN
			counter1 = counter1+1;
		END if;
		temp = temp_int;		
	END if;
	
	
	IF f.company = 'CZBIL' THEN
 		temp_int = f.fiscal_year;
		IF (temp_int - temp = 10001) THEN
			counter2 = counter2+1;
		END if;
		temp = temp_int;
 	END if;

	IF f.company = 'GBIME' THEN
		temp_int = f.fiscal_year;
		IF (temp_int - temp = 10001) THEN
			counter3 = counter3+1;
		END if;
		temp = temp_int;
 	END if;

    end loop;
	raise notice 'valuestocks';
	if counter1 >= 2 then
 		raise notice ' AHPC  ';
	end if;
	if counter2>=2 then
 		raise notice ' CZBIL  ';
	end if;
	if counter3>=2 then
 		raise notice ' GBIME ';
	end if;


end; $$


