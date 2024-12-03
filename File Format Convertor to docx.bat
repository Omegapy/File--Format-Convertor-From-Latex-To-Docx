:: 
:: Batch File 
:: Converters files to docx format using Pandoc
:: https://pandoc.org/
::
:: Alexander Ricciardi
:: November 6 2024
:: 

@echo off

:: Banner
echo ----------------------------- 
echo -  Converting File to docx  -
echo -----------------------------
echo -

:: File Path
echo The file to formate is: %1
echo -

:: File - Name with extension 
set file="%~nx1"

:: File Name  - Name with No extension 
set filename-noext=%~n1

echo running pandoc
echo writing docx ...
pandoc -s %file% -o "%filename-noext%.docx"
echo -

echo the formated file name is "%~dp1%filename-noext%.docx"
echo -

echo complete!
echo -
pause