@echo off
REM ============================================
REM �o�b�`�t�@�C���F�w�肵���t�H���_���������Ĉړ�
REM ============================================

REM �y1�z�o�b�`�t�@�C���̂���t�H���_����ɐݒ�
cd /d %~dp0
set "BaseDir=%cd%"

REM �y2�z��������Ώۃt�H���_�̐e�p�X���w��i�K�v�ɉ����ďC���j
set "SearchDir=%BaseDir%\�t�H���_�̎w��(�����)"

REM �y3�z��������t�H���_���̃p�^�[�����w��
REM ��j*���* �Ƃ���Ɓu��Ɓv���܂ރt�H���_���ΏۂɂȂ�
set "FolderPattern=*�t�H���_�̖��O*"

REM �y4�z�ړ���t�H���_���w��
set "DestDir=%BaseDir%\�ړ���"

REM �y5�z�ړ���t�H���_�����݂��Ȃ���΍쐬
if not exist "%DestDir%" (
    echo �ړ���t�H���_���쐬���܂���: %DestDir%
    mkdir "%DestDir%"
)

REM �y6�z�Ώۃt�H���_���������ď��Ɉړ�
for /d /r "%SearchDir%" %%a in (%FolderPattern%) do (
    echo �ړ���: "%%a" �� "%DestDir%"
    move "%%a" "%DestDir%"
)

REM �y7�z�I�����b�Z�[�W
echo.
echo --------------------------------------------
echo �������������܂����B
echo �o�͐�: %DestDir%
echo --------------------------------------------
pause
