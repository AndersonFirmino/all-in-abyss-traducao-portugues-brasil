@echo off
chcp 65001 >nul
echo ============================================
echo  All in Abyss - Traducao PT-BR
echo  por Awesome Fox Music
echo ============================================
echo.

:: Try common Steam paths
set "GAME_PATH="
set "AA_PATH="
if exist "C:\Program Files (x86)\Steam\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\StandaloneWindows64" (
    set "GAME_PATH=C:\Program Files (x86)\Steam\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\StandaloneWindows64"
    set "AA_PATH=C:\Program Files (x86)\Steam\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa"
)
if exist "D:\SteamLibrary\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\StandaloneWindows64" (
    set "GAME_PATH=D:\SteamLibrary\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\StandaloneWindows64"
    set "AA_PATH=D:\SteamLibrary\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa"
)
if exist "E:\SteamLibrary\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\StandaloneWindows64" (
    set "GAME_PATH=E:\SteamLibrary\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\StandaloneWindows64"
    set "AA_PATH=E:\SteamLibrary\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa"
)

if "%GAME_PATH%"=="" (
    echo [ERRO] Jogo nao encontrado automaticamente.
    echo.
    echo Copie manualmente os arquivos da pasta 'bundles' para:
    echo.
    echo   Os 2 arquivos .bundle para:
    echo   [Steam]\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\StandaloneWindows64\
    echo.
    echo   O catalog.bundle para:
    echo   [Steam]\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\
    echo.
    pause
    exit /b 1
)

echo Jogo encontrado em:
echo   %GAME_PATH%
echo.

:: Backup
echo [1/3] Fazendo backup dos originais...
if not exist "%GAME_PATH%\backup_ptbr" mkdir "%GAME_PATH%\backup_ptbr"
if not exist "%GAME_PATH%\backup_ptbr\058520d1beb68eb92870684f0b90b953.bundle" (
    copy "%GAME_PATH%\058520d1beb68eb92870684f0b90b953.bundle" "%GAME_PATH%\backup_ptbr\" >nul
    copy "%GAME_PATH%\09b47f45b59015c3134f62d9e9e41c69.bundle" "%GAME_PATH%\backup_ptbr\" >nul
    copy "%AA_PATH%\catalog.bundle" "%GAME_PATH%\backup_ptbr\" >nul
    echo   Backup criado em: %GAME_PATH%\backup_ptbr\
) else (
    echo   Backup ja existe, pulando.
)

:: Install bundles
echo.
echo [2/3] Instalando bundles traduzidos...
copy /Y "%~dp0bundles\058520d1beb68eb92870684f0b90b953.bundle" "%GAME_PATH%\" >nul
copy /Y "%~dp0bundles\09b47f45b59015c3134f62d9e9e41c69.bundle" "%GAME_PATH%\" >nul

:: Install catalog
echo [3/3] Instalando catalog patcheado...
copy /Y "%~dp0bundles\catalog.bundle" "%AA_PATH%\" >nul

echo.
echo ============================================
echo  Instalacao concluida! \o/
echo.
echo  Abra o jogo pela Steam e selecione
echo  "English" no menu de idioma.
echo  Tudo vai aparecer em PT-BR.
echo.
echo  Traducao por Awesome Fox Music
echo  steamcommunity.com/id/awesomefox
echo ============================================
echo.
pause
