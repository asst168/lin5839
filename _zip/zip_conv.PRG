sele 1
close all
set excl on
sele zipcode as zip,city as shen,area as city,road,scoop,even,;
	lane,lane1,alley,alley1,no_bgn,no_bgn1,no_end,no_end1,floor,floor1 from c:\zip32w\dbf\rall1 into dbf zzz
use zip1
zap
appe from zzz
repl all shen with strtran(shen,'臺','台'),road with strtran(road,'臺','台')
sele shen,city,road from zip1 group by shen,city,road into dbf zzz
use zip
zap
appe from zzz
sele left(zip,3) as key,left(zip,3) as zip,shen,city from zip1 group by key,shen,city into dbf zzz
use zip2
zap
appe from zzz
close all
erase zzz.dbf
wait 'ok!!' wind nowait
