proc sql;
create table work.carsQuery as
	select 	Make, Model, Type, MSRP,
			mean(MPG_City, MPG_Highway) as AvgMPG
				format=4.1 label='Average MPG'
	from sashelp.cars
	where Origin="Asia"
	order by Make, MSRP desc;
quit;