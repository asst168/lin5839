select left(zip,3) as zip,shen,iif(empty(city),shen,city) as city;
	from zip1;
	order by 1,2,3;
	group by 1,2,3 into dbf zip2
