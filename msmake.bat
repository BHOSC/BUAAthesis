::======================================
:: Filename: mamske.bat
:: Author:   Joseph
:: Created:  2012 - 07 - 12
:: E-mail:   mrpeng000@gmail.com
::======================================
:: ʹ��˵��
::
::   1�������ĵ�
::   msmake [bachelor|master|kaitireport] [fast]
::     �ڵ�ǰĿ¼�±������ģ���ִ��xelatex���������Ӧ��cls/bst�ļ�����ֱ�ӱ���
::      - fast: �״α������ȫ���ʱ������Ҫfastѡ���ִ��xelatex->bibtex->xelatex->xelatex����
::              ����fastѡ��ʱ��ִ��xelatex���Ը��Ʊ����ٶ�
::   2�������ļ�
::   msmake [clean] [more|empty]
::     �ڵ�ǰĿ¼�������������в�������ʱ�ļ�
::     - more �������������в������ļ�������*aux *.bbl �ļ�
::     - empty �������������в������ļ�������*aux *.bbl *.pdf �ļ���������ʹ��
::
::======================================

@echo off
:init
if /i {%1}=={bachelor} goto thesis
if /i {%1}=={master} goto thesis
if /i {%1}=={kaitireport} goto thesis
if /i {%1}=={clean} goto clean
if /i {%1}=={help} goto help
if /i {%1}=={} goto help
goto help

::======================================
:: �����ҵ�����
::======================================
:thesis
echo ���ڱ����ļ�
if not exist buaathesis.cls goto clserr
if not exist gbt7714-author-year.bst goto bsterr
if not exist gbt7714-numerical.bst goto bsterr
if /i {%1}=={bachelor} set mythesis=sample-bachelor
if /i {%1}=={master} set mythesis=sample-master
if /i {%1}=={kaitireport} set mythesis=sample-kaitireport
:: �������ļ������ģ��뽫�����"sample-bachelor"��"sample-master"���ġ�
call xelatex %mythesis%
if not {%2}=={fast} (goto full)
if errorlevel 1 goto myerr1
echo �ɹ���������
call %mythesis%.pdf
goto end
:full
call bibtex %mythesis%
:: Negligible errors will occur when build the bib library.
:: if errorlevel 1 goto biberr
if not exist %mythesis%.bbl goto biberr
call xelatex %mythesis%
call xelatex %mythesis%
echo �ɹ���������
call %mythesis%.pdf
goto end

::======================================
:: ����ļ��Լ���������ļ�
::======================================
:clean
echo ɾ��������ʱ�ļ�
del /f /q /s *.log *.glo *.ilg *.lof *.ind *.out *.thm *.toc *.lot *.loe *.out.bak *.blg *.synctex.gz
del /f /q *.idx
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
:: ������Ϣ
::======================================
:help
echo            ����msmake+��������ѡ�������Ӧ����
echo                ���������msmake bachelor��
echo        msmake����             ˵��
echo     bachelor/master       �����ҵ�����
echo	    clean                 ������ɵĶ����ļ�
echo	    help                  ��ʾ��������Ϣ
echo     bachelor/master full  Ϊ�״λ�����"clean more"�����ʹ��
echo	    clean more            ��������е�ǰĿ¼�µ��޹��ļ�
echo ע�⣺���������ļ���������sample-bachelor.tex��sample-master.tex
:: �̲�ס�²ۣ�Ϊ����ʾ���룬��Ȼ�ŵ���ô�ң�
goto end

::======================================
:: ���д�����Ϣ
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
:: �����������κξ�������
::======================================
:end
