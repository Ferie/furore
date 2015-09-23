REM il file da convertire passato come parametro deve essere senza l'estensione!
REM Sostituire i propri path
cd "C:\Program Files\GnuWin32\bin"
set rootSour=http://localhost:8080/gb-energy-website-v2-main-site/app/furore/jsp/
set rootDest=C:\websites\gb-energy-website-v2-main-site\app\furore
set logDest=C:\websites\gb-energy-website-v2-main-site\app\furore\wget_log.log
set start=%date:~-4%-%date:~3,2%-%date:~0,2%---%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%
mkdir "%rootDest%\%start%"

wget "%rootSour%/%1.jsp" -a "%logDest%" -O "%rootDest%\%start%\%1.html"