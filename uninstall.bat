@echo off
chcp 65001 >nul
echo ============================================
echo  All in Abyss - Remover Traducao PT-BR
echo ============================================
echo.

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
    echo [ERRO] Jogo nao encontrado.
    echo Use "Verificar integridade" no Steam pra restaurar os originais:
    echo   Botao direito no jogo ^> Propriedades ^> Arquivos Instalados ^> Verificar integridade
    pause
    exit /b 1
)

if not exist "%GAME_PATH%\backup_ptbr\058520d1beb68eb92870684f0b90b953.bundle" (
    echo [ERRO] Backup nao encontrado.
    echo Use "Verificar integridade" no Steam pra restaurar os originais:
    echo   Botao direito no jogo ^> Propriedades ^> Arquivos Instalados ^> Verificar integridade
    pause
    exit /b 1
)

echo Restaurando arquivos originais...
copy /Y "%GAME_PATH%\backup_ptbr\058520d1beb68eb92870684f0b90b953.bundle" "%GAME_PATH%\" >nul
copy /Y "%GAME_PATH%\backup_ptbr\09b47f45b59015c3134f62d9e9e41c69.bundle" "%GAME_PATH%\" >nul
copy /Y "%GAME_PATH%\backup_ptbr\catalog.bundle" "%AA_PATH%\" >nul

echo.
echo Traducao removida. Jogo restaurado ao original.
echo Pode tambem usar "Verificar integridade" no Steam.
echo.
pause
