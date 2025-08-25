@echo off
REM ============================================
REM バッチファイル：フォルダごとまとめて移動
REM ============================================

REM 【1】バッチファイルのある場所を基準に処理開始
cd /d %~dp0
set "BaseDir=%cd%"

REM 【2】移動元フォルダを指定
REM 例）「フォルダの指定」を書き換えて使う
set "SourceDir=%BaseDir%\フォルダの指定"

REM 【3】移動先フォルダを指定
set "DestDir=%BaseDir%\移動先"

REM 【4】移動元フォルダの存在確認
if not exist "%SourceDir%" (
    echo エラー：移動元が存在しません → %SourceDir%
    pause
    exit /b
)

REM 【5】移動先フォルダが無ければ作成
if not exist "%DestDir%" (
    echo 移動先フォルダを作成しました: %DestDir%
    mkdir "%DestDir%"
)

REM 【6】フォルダごとまとめて移動
echo 移動開始: %SourceDir% → %DestDir%
move "%SourceDir%" "%DestDir%"

REM 【7】処理完了メッセージ
echo.
echo --------------------------------------------
echo フォルダごと移動が完了しました。
echo 移動元 : %SourceDir%
echo 移動先 : %DestDir%
echo --------------------------------------------
pause
