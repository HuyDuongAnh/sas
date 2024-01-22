title "Mean Highway MPG By Vehicle Type and Origin";

proc sgplot data=sashelp.cars;
	where Type ne "Hybrid";
	vbar type / response=mpg_highway
				stat=mean
				group=Origin
				groupdisplay=cluster;
	yaxis label="Mean Highway MPG";
run;

title;