para tcDocument,IsShowWindow
if Pcount()<2 && 當_shell with 少於對應的參數時，後面的參數則以預設值處理之
	IsShowWindow = 1 && 0.表示隱藏 1正常方式 2最小化方式 3最大化方式。
endif
local lnResult
declare integer ShellExecute ;
	in SHELL32.dll ;
	integer nWinHandle, ;
	string cOperation, ;
	string cFileName, ;
	string cParameters, ;
	string cDirectory, ;
	integer nShowWindow
**retreive the main VFP window handle (this handle is used by ShellExecute)
declare integer FindWindow in WIN32API 	string cNull,string cWinName
lnResult=ShellExecute(FindWindow( 0, _screen.caption), "Open", tcDocument, "", "", IsShowWindow)
**Error messages if the return value is < 32
*** 使用執行檔
*#DEFINE SW_NORMAL 1
*DECLARE INTEGER WinExec IN kernel32;
*  STRING cCmdLine,;
*   INTEGER nCmdShow
*= WinExec("explorer.exe", SW_NORMAL)

if lnResult < 32
	do case
		case lnResult=2
			messagebox("找不到這個檔案 ... "+chr(13)+chr(13)+tcDocument,0+16,'錯誤訊息')
		case lnResult=31
			messagebox("找不到可以開啟這個檔案的格式 ... "+chr(13)+chr(13)+tcDocument,0+16,'錯誤訊息')
		case lnResult=29
			messagebox("無法開啟這個檔案所需要的 ... 應用軟體。"+chr(13)+chr(13)+tcDocument,0+16,'錯誤訊息')
		case lnResult=30
			messagebox("這個檔案所需要的 ... 應用軟體，之前已經被開啟。"+chr(13)+chr(13)+tcDocument,0+16,'錯誤訊息')
	endcase
endif
proc zzz
*參數： 
*hwnd 
*　Handle to a parent window. This window receives any message boxes 
*　that an application produces, such as error reporting. 

*lpOperation 
*　對指定檔案執行時所做的動作，有下列幾種選擇： 
*　edit　　編輯 
*　explore 瀏覽 
*　find　　搜尋 
*　open　　開啟 
*　print　 列印 

*lpFile 
*　所指定的檔案 

*lpParameters 
*　若指定檔案是一個可執行檔案(executable file)，且其後可下參數時，lpParameters 
*　就是存放該執行檔的參數內容。 

*lpDirectory 
*　指定檔案所在的路徑。若未指定，它會依預設的方式一一尋找。 

*nShowCmd 
*　指定執行該檔案時，其應用程式的顯示模式：(除了下列兩種外，應該還有其他) 
*　0　不顯示 
*　1　一般大小
*　2　最小化
*　3　最大化