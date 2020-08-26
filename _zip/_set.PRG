*------------------------------------------------------------------------------
* 程式名稱: _set.prg
* 作業名稱: 因應 datasession of form set to 2
* 開發日期: 2003/10/09
* 更新日期:
* 處理條件:
*------------------------------------------------------------------------------
*wait str(_screen.formcount) wind nowait
set talk off
set date ansi
set confirm on
set safety off
set delete on
set century on && Y2K...
set reprocess to auto
set multilock on  && for table buffering...
set notify off
_error=_screen.caption
_screen.closable=.f.
*set status bar off
*wait 'yes...' wind nowait
