para zf
	do case
	case '台北縣' $ zf
		xword=zf
		xword=strtran(xword,'台北縣','新北市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword
			xword=strtran(xword,'市','區',2,1)
		endcase
	case '北縣' $ zf
		xword=zf
		xword=strtran(xword,'北縣','新北市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword
			xword=strtran(xword,'市','區',2,1)
		endcase
	case '台中縣' $ zf
		xword=zf
		xword=strtran(xword,'台中縣','台中市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword
			xword=strtran(xword,'市','區',2,1)
		endcase
	case '中縣' $ zf
		xword=zf
		xword=strtran(xword,'中縣','台中市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword
			xword=strtran(xword,'市','區',2,1)
		endcase
	case '台南縣' $ zf
		xword=zf
		xword=strtran(xword,'台南縣','台南市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword
			xword=strtran(xword,'市','區',2,1)
		endcase
	case '南縣' $ zf
		xword=zf
		xword=strtran(xword,'南縣','台南市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword
			xword=strtran(xword,'市','區',2,1)
		endcase
	case '高雄縣' $ zf
		xword=zf
		xword=strtran(xword,'高雄縣','高雄市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword
			xword=strtran(xword,'市','區',2,1)
		endcase
	case '高縣' $ zf
		xword=zf
		xword=strtran(xword,'高縣','高雄市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword
			xword=strtran(xword,'市','區',2,1)
		endcase
	case '桃園縣' $ zf
		xword=zf
		xword=strtran(xword,'桃園縣','桃園市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword or '平鎮' $ xword
			xword=strtran(xword,'市','區',2,1)
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		endcase
	case '桃縣' $ zf
		xword=zf
		xword=strtran(xword,'桃縣','桃園市')
		do case
		case '鄉' $ xword
			xword=strtran(xword,'鄉','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		case '市' $ xword or '平鎮' $ xword
			xword=strtran(xword,'市','區',2,1)
		case '鎮' $ xword
			xword=strtran(xword,'鎮','區')
			if '村' $ xword
				xword=strtran(xword,'村','里',1,1)
			endif
		endcase
	other
		xword=zf
	endcase
return xword