**********************************************************************************
* 程式名稱: menu.prg
* 作業名稱: 3+2郵遞區號系統主程式
* 開發日期: 2005/09/12
**********************************************************************************
xdir=left(fullpath(''),1)
_local=xdir+':\_zip'
set talk off
set safe off
clear all
clear dlls
set bell to 'asst.wav'
on shutdown keyboard '{esc}'
push key clear
set notify off && for object readonly not show in statusbar系統不會會出現"此控制項唯讀！"的提示
hide wind all
set help off
set sysmenu to default&&off
set bell on
set sysmenu off
set view off
set heading off
set escape off
set optimize on
set status bar on
set scoreboard off
set console off && for print file not show on screen
set date ansi
set confirm on
set safety off
set delete on
set century on && Y2K...
*set multilock on  && for table buffering...
set exclusive off && network...
set reprocess to 0,0&&auto
set message to
on error
set func 01 to ''
set func 02 to ''
set func 03 to ''
set func 04 to ''
set func 05 to ''
set func 06 to ''
set func 07 to ''
set func 08 to ''
set func 09 to ''
set func 10 to ''
set func 11 to ''
set func 12 to ''
***系統主資料變數
if wvisible('標')
	hide wind '標'
endif
if wvisible('配')
	hide wind '配'
endif
with _vfp
	.width=0
	.height=0
endwith
with _screen
	.caption='3+2碼 郵遞區號查詢'
	.lockscreen=.f.
	.borderstyle=0
	.titlebar=1
	.backcolor=0
	.controlbox=.f.
	.closable=.f.
	.maxbutton=.f.
	.minbutton=.t.
	.top=0
	*.left=iif(sysmetric(1)=800,0,(sysmetric(1)-800)/2)
	.left=0
	.width=800
	.height=510
	.autocenter=.t.
	.windowstate=0
endwith
do form w_zip with ''
read events