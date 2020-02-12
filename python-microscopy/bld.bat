:: "%PYTHON%" setup.py build_ext -c mingw32

cd "PYME"

if not exist "%PREFIX%\Menu" mkdir "%PREFIX%\Menu"
copy "%RECIPE_DIR%\menu-windows.json" "%PREFIX%\Menu"
copy "resources\icons\*.ico" "%PREFIX%\Menu"

rem Cludge to make us find the community edition of visualc
echo %MSVC_PATH%
if defined MSVC_PATH (
call "%MSVC_PATH%\vcvarsall.bat" x64
) else call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

"%PYTHON%" setup.py install

:: copy "%RECIPE_DIR%"\libpython27.a "%PREFIX%"\libs

:: "%PYTHON%" pymecompress\setup.py build --compiler=mingw32
:: "%PYTHON%" pymecompress\setup.py install 

if errorlevel 1 exit 1

:: Add more build steps here, if they are necessary.

:: See
:: http://docs.continuum.io/conda/build.html
:: for a list of environment variables that are set during the build process.
