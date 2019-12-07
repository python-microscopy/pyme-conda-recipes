rem Cludge to make us find the community edition of visualc
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

"%PYTHON%" setup.py install