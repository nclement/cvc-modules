help([[
   Qt 3 is an outdated, deprecated version of the Qt library which is
   many many major versions out of date. It is provided as a module
   for the purpose of supporting legacy CVC applications.

   Built with system gcc module on CentOS 7 (v4.8.5)  
]])
whatis("Version: 3.3.8")
whatis("Keywords: Library, QT, qt, cvc")
whatis("URL: https://download.qt.io/archive/qt/3/")
whatis("Description: Deprecated Graphics Library, used for legacy CVC projects")

setenv(       "QTDIR",        "/org/centers/cvc/software/c7/libraries/qt-3.3.8")
prepend_path( "PATH",           "/org/centers/cvc/software/c7/libraries/qt-3.3.8/bin")
prepend_path( "MANPATH",           "/org/centers/cvc/software/c7/libraries/qt-3.3.8/doc/man")
prepend_path( "LD_LIBRARY_PATH","/org/centers/cvc/software/c7/libraries/qt-3.3.8/lib")
