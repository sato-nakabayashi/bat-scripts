@echo off
REM -------------------------------
REM あるフォルダ内のファイルやフォルダの一覧をテキストファイルに出力する
REM -------------------------------

REM バッチファイルのあるフォルダに移動
cd /d %~dp0

REM 処理用ディレクトリを変数に保存
set "ResDir=%cd%"

REM -------------------------------
REM 手で修正して希望のフォルダを指定してください。
REM A部分に一覧をリスト化したいフォルダ名を指定してください。
set "ListFolderName=A"

REM B部分にリスト化したフォルダを書き出すフォルダ名を指定してください。
set "OutputFolderName=B"

REM C部分にリスト化したフォルダを書き出すテキストファイル名(拡張子は除く)を指定してください。
set "OutputFileName=C"
REM -------------------------------

REM 出力対象フォルダと出力ファイル名を変数に設定
set "TargetFolder=%ResDir%\%ListFolderName%"
set "OutputFile=%ResDir%\%OutputFolderName%\%OutputFileName%.txt"

REM 出力フォルダが存在しない場合は作成
if not exist "%ResDir%\%OutputFolderName%" mkdir "%ResDir%\%OutputFolderName%"

REM フォルダ内一覧をテキストに出力
dir /B "%TargetFolder%" > "%OutputFile%"

echo 処理完了：%OutputFile%
pause

