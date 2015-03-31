@ECHO OFF
REM Sostituire i propri path
cd "C:\Program Files (x86)\GnuWin32\bin"
set rootSour=http://localhost:8080/unicredit-corporate
set rootDest=C:\Users\Public\Documents\Partita iva\GECOD\Progetti\Unicredit\Consegne
set logDest=C:\Users\Public\Documents\Partita iva\GECOD\Progetti\Unicredit\Consegne\wget_log.log
set start=%date:~-4%-%date:~3,2%-%date:~0,2%
mkdir "%rootDest%\%start%"
wget "%rootSour%/%1.jsp" -o "%logDest%" -O "%rootDest%\%start%\%1.html"