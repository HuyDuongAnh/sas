%let table_car=sashelp.cars;
%let rows=10;
%let header=label;

title "First &rows Rows from %upcase(&table_car)";
proc print data=&table_car(obs=&rows) &header;
run;
title;