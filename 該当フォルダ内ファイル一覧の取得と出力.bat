@echo off
REM -------------------------------
REM ����t�H���_���̃t�@�C����t�H���_�̈ꗗ���e�L�X�g�t�@�C���ɏo�͂���
REM -------------------------------

REM �o�b�`�t�@�C���̂���t�H���_�Ɉړ�
cd /d %~dp0

REM �����p�f�B���N�g����ϐ��ɕۑ�
set "ResDir=%cd%"

REM �o�͑Ώۃt�H���_�Əo�̓t�@�C������ϐ��ɐݒ�
set "TargetFolder=%ResDir%\�ꗗ���o�������t�H���_"
set "OutputFile=%ResDir%\�o�͂������t�@�C��\�o�̓t�@�C����.txt"

REM �o�̓t�H���_�����݂��Ȃ��ꍇ�͍쐬
if not exist "%ResDir%\�o�͂������t�@�C��" mkdir "%ResDir%\�o�͂������t�@�C��"

REM �t�H���_���ꗗ���e�L�X�g�ɏo��
dir /B "%TargetFolder%" > "%OutputFile%"

echo ���������F%OutputFile%
pause
