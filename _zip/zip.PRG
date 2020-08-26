set talk off
sele 1
close all
sele zipcode as zip,city as shen,area as city,road,scoop,even,lane,lane1,alley,alley1,no_bgn,no_bgn1,no_end,no_end1,floor,floor1 from f:\rall1 into dbf xzip1
sele shen,city,road from xzip1 group by shen,city,road into dbf xzip
sele left(zip,3) as zip,left(zip,3) as key,shen,city from xzip1 group by key,shen,city into dbf xzip2

use zip in 0
sele zip
zap
appe from xzip

use zip1 in 0
sele zip1
zap
appe from xzip1

use zip2 in 0
sele zip2
zap
appe from xzip2
sele 1
close all
erase xzip.dbf
erase xzip1.dbf
erase xzip2.dbf

sele zipcode as zip,city as shen,area as city,village1 as li from f:\village group by shen,city,li into dbf zzz
use li
zap
appe from zzz
erase zzz.dbf
close all
return

use zip
repl all shen with strtran(shen,'臺','台'),city with strtran(city,'臺','台'),road with strtran(road,'臺','台')
use zip1
repl all shen with strtran(shen,'臺','台'),city with strtran(city,'臺','台'),road with strtran(road,'臺','台')
use zip2
repl all shen with strtran(shen,'臺','台'),city with strtran(city,'臺','台')
use li
repl all shen with strtran(shen,'臺','台'),city with strtran(city,'臺','台'),li with strtran(li,'臺','台')
clos all
