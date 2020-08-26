*------------------------------------------------------------------------------
* 程式名稱: _n2c2.prg
* 作業名稱: 文數字轉國曆
* 開發日期: 1999/7/29
* 更新日期:
* 處理條件:
*------------------------------------------------------------------------------
para z_date
if type('z_date')='N'
	xsw_alt=iif(z_date>99,1,0)
else
	xsw_alt=iif(val(z_date)>99,1,0)
endif
do case
case xsw_alt=0
	if type('z_date')='N'
		z_date=strtran(str(z_date,2),' ','0')
	endif
	v_num=''
	for kk=2 to 1 step -1 && 先由最右位數讀取
		do case
		case val(substr(z_date,kk,1))=1
			v_num='一'+v_num
		case val(substr(z_date,kk,1))=2
			v_num='二'+v_num
		case val(substr(z_date,kk,1))=3
			v_num='三'+v_num
		case val(substr(z_date,kk,1))=4
			v_num='四'+v_num
		case val(substr(z_date,kk,1))=5
			v_num='五'+v_num
		case val(substr(z_date,kk,1))=6
			v_num='六'+v_num
		case val(substr(z_date,kk,1))=7
			v_num='七'+v_num
		case val(substr(z_date,kk,1))=8
			v_num='八'+v_num
		case val(substr(z_date,kk,1))=9
			v_num='九'+v_num
		endcase
		if val(z_date)>10
			v_num=iif(kk=1,'','十')+v_num
		else
			exit
		endif
	endfor
	if val(z_date)>10  and val(z_date)<20
		v_num=space(2)+right(v_num,4)
	endif
	if val(z_date)=10
		v_num='十'
	endif
	if val(z_date)<=10
		v_num=space(4)+v_num
	endif
	return alltrim(v_num) && 回應結果
case xsw_alt=1
	if type('z_date')='N'
		z_date=str(z_date)
	endif
	z_date=alltrim(z_date)
	v_num=''
	for kk=1 to len(z_date)
		do case
		case val(substr(z_date,kk,1))=0
			v_num=v_num+'○'
		case val(substr(z_date,kk,1))=1
			v_num=v_num+'一'
		case val(substr(z_date,kk,1))=2
			v_num=v_num+'二'
		case val(substr(z_date,kk,1))=3
			v_num=v_num+'三'
		case val(substr(z_date,kk,1))=4
			v_num=v_num+'四'
		case val(substr(z_date,kk,1))=5
			v_num=v_num+'五'
		case val(substr(z_date,kk,1))=6
			v_num=v_num+'六'
		case val(substr(z_date,kk,1))=7
			v_num=v_num+'七'
		case val(substr(z_date,kk,1))=8
			v_num=v_num+'八'
		case val(substr(z_date,kk,1))=9
			v_num=v_num+'九'
		endcase
	endfor
	return alltrim(v_num) && 回應結果
endcase
