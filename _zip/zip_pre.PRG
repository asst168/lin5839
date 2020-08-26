use old order city in 0
use cust in 0
sele cust
set rela to left(c_add,6) into old
do while not eof()
	xadd=c_add
	if not eof('old') and (old.shen='台北縣' or old.shen='台中縣' or old.shen='台南縣' or old.shen='高雄縣' or old.shen='桃園縣')
		repl c_add with old.shen+alltrim(c_add)
	endif
	sele cust
	skip
enddo
sele cust
set rela to left(i_add,6) into old
go top
do while not eof()
	xadd=i_add
	if not eof('old') and (old.shen='台北縣' or old.shen='台中縣' or old.shen='台南縣' or old.shen='高雄縣' or old.shen='桃園縣')
		repl i_add with old.shen+alltrim(i_add)
	endif
	sele cust
	skip
enddo
sele cust
set rela to left(s_add,6) into old
go top
do while not eof()
	xadd=s_add
	if not eof('old') and (old.shen='台北縣' or old.shen='台中縣' or old.shen='台南縣' or old.shen='高雄縣' or old.shen='桃園縣')
		repl s_add with old.shen+alltrim(s_add)
	endif
	sele cust
	skip
enddo
use in cust
use vend in 0
sele vend
set rela to left(c_add,6) into old
do while not eof()
	xadd=c_add
	if not eof('old') and (old.shen='台北縣' or old.shen='台中縣' or old.shen='台南縣' or old.shen='高雄縣' or old.shen='桃園縣')
		repl c_add with old.shen+alltrim(c_add)
	endif
	sele vend
	skip
enddo
sele vend
set rela to left(i_add,6) into old
go top
do while not eof()
	xadd=i_add
	if not eof('old') and (old.shen='台北縣' or old.shen='台中縣' or old.shen='台南縣' or old.shen='高雄縣' or old.shen='桃園縣')
		repl i_add with old.shen+alltrim(i_add)
	endif
	sele vend
	skip
enddo
sele vend
set rela to left(s_add,6) into old
go top
do while not eof()
	xadd=s_add
	if not eof('old') and (old.shen='台北縣' or old.shen='台中縣' or old.shen='台南縣' or old.shen='高雄縣' or old.shen='桃園縣')
		repl s_add with old.shen+alltrim(s_add)
	endif
	sele vend
	skip
enddo
use in vend