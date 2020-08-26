*------------------------------------------------------------------------------
* 程式名稱: _n2c7.prg
* 作業名稱: 全形數字轉半形數字
* 開發日期: 2019/08/18
* 更新日期:
* 處理條件:
*------------------------------------------------------------------------------
para z_num
v_num=''
	do case
	case z_num='０'
		v_num='0'
	case z_num='１'
		v_num='1'
	case z_num='２'
		v_num='2'
	case z_num='３'
		v_num='3'
	case z_num='４'
		v_num='4'
	case z_num='５'
		v_num='5'
	case z_num='６'
		v_num='6'
	case z_num='７'
		v_num='7'
	case z_num='８'
		v_num='8'
	case z_num='９'
		v_num='9'
	other
		v_num='*'
	endcase
return v_num && 回應結果