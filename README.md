# winfstest
Windows file system testing. Inspired by the FreeBSD fstest, but written from scratch to work on Windows.

Based from work of Bill Zissimopoulos, https://bitbucket.org/billziss/secfs.test

Prerequisites:
* Visual Studio (prepared in VS 2015)
* Windows 10 SDK 
* Python 2.7

To run:
* Build the winfstest.exe with VS
* cd TestSuite
* run-winfstest.bat - if python not found, u probably need to edit HKCU to HKLM (machine vs per user Python install)
* U shoud see test done 171/171 

To test another location give a path as first argument: run-winfstest.bat X:\tmp
