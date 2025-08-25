@echo off
REM ============================================
REM バッチファイル：指定したフォルダを検索して移動
REM ============================================

REM 【1】バッチファイルのあるフォルダを基準に設定
cd /d %~dp0
set "BaseDir=%cd%"

REM 【2】検索する対象フォルダの親パスを指定（必要に応じて修正）
set "SearchDir=%BaseDir%\フォルダの指定(あれば)"

REM 【3】検索するフォルダ名のパターンを指定
REM 例）*作業* とすると「作業」を含むフォルダが対象になる
set "FolderPattern=*フォルダの名前*"

REM 【4】移動先フォルダを指定
set "DestDir=%BaseDir%\移動先"

REM 【5】移動先フォルダが存在しなければ作成
if not exist "%DestDir%" (
    echo 移動先フォルダを作成しました: %DestDir%
    mkdir "%DestDir%"
)

REM 【6】対象フォルダを検索して順に移動
for /d /r "%SearchDir%" %%a in (%FolderPattern%) do (
    echo 移動中: "%%a" → "%DestDir%"
    move "%%a" "%DestDir%"
)

REM 【7】終了メッセージ
echo.
echo --------------------------------------------
echo 処理が完了しました。
echo 出力先: %DestDir%
echo --------------------------------------------
pause
