@echo off
REM -------------------------------
REM あるフォルダ内のファイルやフォルダの一覧をテキストファイルに出力する
REM -------------------------------

REM バッチファイルのあるフォルダに移動
cd /d %~dp0

REM 処理用ディレクトリを変数に保存
set "ResDir=%cd%"

REM 出力対象フォルダと出力ファイル名を変数に設定
set "TargetFolder=%ResDir%\一覧を出したいフォルダ"
set "OutputFile=%ResDir%\出力したいファイル\出力ファイル名.txt"

REM 出力フォルダが存在しない場合は作成
if not exist "%ResDir%\出力したいファイル" mkdir "%ResDir%\出力したいファイル"

REM フォルダ内一覧をテキストに出力
dir /B "%TargetFolder%" > "%OutputFile%"

echo 処理完了：%OutputFile%
pause
