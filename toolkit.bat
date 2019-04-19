echo off
title 毕业设计工具箱
color 0F

:main
cls
echo.
echo.		  /-----------------------------
echo.		 ‖        毕业设计工具箱        ‖
echo.		  -----------------------------/
echo.
echo.            1 - compile
echo.            2 - wordcount
echo.            3 - pandoc
echo.            4 - clean
echo.            5 - pdftk
echo.-----------------------------------------------------------
set input=
set /p input=请选择【输入序号,然后回车】：
if /i '%input%'=='1' goto main1
if /i '%input%'=='2' goto main2
if /i '%input%'=='3' goto main3
if /i '%input%'=='4' goto main4
cls
echo.
pause
goto main
:end
exit

:main1
cls
xelatex.exe -synctex=1 -interaction=nonstopmode -shell-escape "bachelor".tex
bibtex.exe "bachelor".bib
xelatex.exe -synctex=1 -interaction=nonstopmode -shell-escape "bachelor".tex
xelatex.exe -synctex=1 -interaction=nonstopmode -shell-escape "bachelor".tex
pause
goto main

:main2
cls
texcount "bachelor".tex
pause
goto main

:main3
cls
pandoc -s bachelor.tex -o bachelor.docx
pause
goto main

:main4
del *.aux /s
del *.bak /s
del *.log /s
del *.bbl /s
del *.dvi /s
del *.blg /s
del *.thm /s
del *.toc /s
del *.out /s
del *.lof /s
del *.lol /s
del *.lot /s
del *.fdb_latexmk /s
del *.synctex.gz /s
del *.synctex(busy) /s
# del *.synctex /s
del *.idx /s
del *.ilg /s
del *.ind /s
pause
goto main

:main4
pdftk.exe A=cover.pdf B=bachelor.pdf cat A1 B2-end output bachelor-v2.pdf
pause
goto main