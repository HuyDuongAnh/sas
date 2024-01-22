data class_new;
	set sashelp.class;
	Ratio=Heigh/Weight;
run;

proc print data=class_new;
run;