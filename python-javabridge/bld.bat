set MSSdk=1
set DISTUTILS_USE_SDK=1

:: JAVA_HOME is set by openjdk install
set JDK_HOME=%LIBRARY_PREFIX%

"%PYTHON%" setup.py install
if errorlevel 1 exit 1

:: Add more build steps here, if they are necessary.

:: See
:: http://docs.continuum.io/conda/build.html
:: for a list of environment variables that are set during the build process.
