*------------------------------------------------------------------------------
* 程式名稱: _msg.prg
* 作業名稱: 訊息資訊
* 開發日期: 2000/04/21
* 更新日期:
* 處理條件: 16=X(alarm) 32=?(info) 48=!(warn) 64=!(info)
*------------------------------------------------------------------------------
para xx_msg
do case
	case xx_msg=0
		messagebox('輸入錯誤??'+chr(13)+chr(13)+'您必須輸入正確資料',0+16,'錯誤訊息')
	case xx_msg=1
		messagebox('本筆資料已經作廢!!',0+32,'系統訊息')
	case xx_msg=2
		messagebox('本筆資料已經結案!!',0+32,'系統訊息')
	case xx_msg=3
		messagebox('本筆資料已經結案[屬現金結帳]!!',0+32,'系統訊息')
	case xx_msg=7
		messagebox('輸入錯誤??'+chr(13)+chr(13)+'該母件尚未建立BOM資料',0+16,'錯誤訊息')
	case xx_msg=8
		messagebox('輸入錯誤??'+chr(13)+chr(13)+'異動日期不應早於結存日期',0+16,'錯誤訊息')
	case xx_msg=9
		messagebox('輸入錯誤??'+chr(13)+chr(13)+'結存日期不應早於異動日期',0+16,'錯誤訊息')
	case xx_msg=10
		messagebox('輸入錯誤??'+chr(13)+chr(13)+'您輸入的結存日期不應早於已存在的結存日期',0+16,'錯誤訊息')
	case xx_msg=11
		messagebox('資料重複??',0+16,'錯誤訊息')
	case xx_msg=12
		messagebox('目前仍有其他使用者，正在使用本系統!!'+chr(13)+chr(13),0+48,'系統訊息')
	case xx_msg=13
		messagebox('您所輸入的日期，可能有問題，請確認!!'+chr(13)+chr(13)+'(已經超過系統日期...90天)',0+32,'系統訊息')
	case xx_msg=14
		messagebox('您所輸入的結帳月份，可能有問題，請確認!!',0+32,'系統訊息')
	case xx_msg=15
		messagebox('輸入錯誤??'+chr(13)+chr(13)+'您必須輸入正確的 [統一編號] 資料',0+16,'錯誤訊息')
	case xx_msg=22
		messagebox('本筆資料為賒銷資料!!',0+32,'系統訊息')
	case xx_msg=33
		messagebox('本筆資料為現銷資料!!',0+32,'系統訊息')
	case xx_msg=777
		messagebox('本報表無任何資料可供列印!!',0+48,'系統訊息')
	case xx_msg=778
		messagebox('您目前所選擇的印表機，無法適用目前所選擇的 [紙張格式] !!'+;
			chr(13)+chr(13)+'請先行設妥該印表機的 [預設紙張]'+;
			chr(13)+chr(13)+'** 請參考 [一般操作] 有關 [列印] 的說明 **',0+48,'系統訊息')
	case xx_msg=1298
		messagebox('您所輸出的報表格式，超出該印表機預設的 [紙張格式]!!',0+48,'系統訊息')
	case xx_msg=888
		messagebox('無任何資料!!',0+32,'系統訊息')
	case xx_msg=999
		messagebox('處理完成!!',0+32,'系統訊息')
	case xx_msg=1000
		wait ' 查詢完畢!! ' wind nowait at (srow()-3)/2,(scol()-60)/2
	case xx_msg=1001
		wait ' 查詢中... 請稍後 ' wind nowait at (srow()-3)/2,(scol()-60)/2
	case xx_msg=1002
		wait ' 處理中... 請稍後 ' wind nowait at (srow()-3)/2,(scol()-60)/2
	case xx_msg=1003
		wait ' 處理完畢!! ' wind nowait at (srow()-3)/2,(scol()-60)/2
endcase