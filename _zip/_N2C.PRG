*------------------------------------------------------------------------------
* 程式名稱: _n2c
* 作業名稱: 數字轉換全型數字
* 開發日期: 2002/01/07
* 更新日期:
* 處理條件:
*------------------------------------------------------------------------------
para z_num
if type('z_num')='N'
	z_num=str(z_num)
endif
z_num=alltrim(z_num)
v_num=''
for kk=1 to len(z_num)
	do case
	case val(substr(z_num,kk,1))=0
		v_num=v_num+'０'
	case val(substr(z_num,kk,1))=1
		v_num=v_num+'１'
	case val(substr(z_num,kk,1))=2
		v_num=v_num+'２'
	case val(substr(z_num,kk,1))=3
		v_num=v_num+'３'
	case val(substr(z_num,kk,1))=4
		v_num=v_num+'４'
	case val(substr(z_num,kk,1))=5
		v_num=v_num+'５'
	case val(substr(z_num,kk,1))=6
		v_num=v_num+'６'
	case val(substr(z_num,kk,1))=7
		v_num=v_num+'７'
	case val(substr(z_num,kk,1))=8
		v_num=v_num+'８'
	case val(substr(z_num,kk,1))=9
		v_num=v_num+'９'
	endcase
endfor
_var=v_num
return _var