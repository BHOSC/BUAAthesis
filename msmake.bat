::======================================
:: Filename:mamske.bat
:: Author:  Joseph
:: Created: 2012 - 07 - 12
:: E-mail:  mrpeng000@gmail.com
::======================================
::ʹ��˵��
::
::  1�������ĵ�
::  thesis [full]
::    �ڵ�ǰĿ¼�±������ģ���ִ��xelatex���������Ӧ��cls/bst�ļ�����ֱ�ӱ���
::     - full Ϊ�״α������ȫ���ʱ��ѡ���ִ��xelatex->bibtex->xelatex->xelatex����
::  2�������ļ�
::  clean [more]
::    �ڵ�ǰĿ¼�������������в�������ʱ�ļ�
::     - more �������������в������ļ�������pdf��aux��bbl���ļ�
::
::======================================

@echo off
set mythesis=sample-master
::�ڴ˴�������Ҫ������ļ���
:init
if /i {%1}=={thesis} goto thesis
if /i {%1}=={clean} goto clean
if /i {%1}=={help} goto help
if /i {%1}=={} goto help
goto help

::======================================
::�����ҵ�����
::======================================
:thesis
echo ���ڱ����ļ�
if not exist buaathesis.cls goto clserr
if not exist buaathesis.bst goto bsterr
call xelatex %mythesis%
if {%2}=={full} (goto full)
if errorlevel 1 goto myerr1
echo �ɹ���������
call %mythesis%.pdf
goto end
:full
call bibtex %mythesis%
if errorlevel 1 goto biberr
call xelatex %mythesis%
call xelatex %mythesis%
if errorlevel 1 goto myerr1
echo �ɹ���������
call %mythesis%.pdf
goto end

::======================================
::����ļ��Լ���������ļ�
::======================================
:clean
echo ɾ��������ʱ�ļ�
del /f /q /s *.log *.glo *.idx *.ilg *.lof *.ind *.out *.thm *.toc *.lot *.loe *.out.bak *.blg *.synctex.gz
del /f /s *.dvi *.ps
if {%2}=={more} (goto cleanmore)
if {%2}=={empty} (goto cleanempty)
goto end
:cleanmore
del /f /q /s *.aux *.bbl
goto end
:cleanempty
del /f /q /s *aux *.bbl *.pdf
goto end

::======================================
::������Ϣ
::======================================
:help
echo            ����msmake+��������ѡ�������Ӧ����
echo                ���������msmake clean more��
echo     msmake����   ˵��
echo     thesis       �����ҵ�����
echo	    clean        ������ɵĶ����ļ�
echo	    help         ��ʾ��������Ϣ
echo     thesis full  Ϊ�״λ�����"clean more"�����ʹ��
echo	    clean more   ��������е�ǰĿ¼�µ��޹��ļ�
::�̲�ס�²ۣ�Ϊ����ʾ���룬��Ȼ�ŵ���ô�ң�
goto end

::======================================
::���д�����Ϣ
::======================================
:myerr1
echo ��ѽ����������ʧ������
goto end
:biberr
echo ò��ľ�вο��������ݿ��
goto end
:clserr
echo ��Ȼ��clsģ�嶼ľ�У���������
goto end
:bsterr
echo ��Ȼ��bst�Ĳο�������ʽ��ľ�У���������
goto end

::======================================
::�����������κξ�������
::======================================
:end