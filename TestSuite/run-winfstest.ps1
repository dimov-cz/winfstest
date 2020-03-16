param (
    $testSubDir=".",
    $testedPath)

$scriptLocation = [System.IO.Path]::GetDirectoryName(
    $myInvocation.MyCommand.Definition)

$env:PYTHONPATH=$scriptLocation

if (!(where.exe python.exe)) {
    $msg = "Could not find python.exe. Please make sure that Python is " +
           "installed and included in the %PATH% environment variable."
    throw $msg
}

& python.exe $scriptLocation\simpletap.py $scriptLocation\$testSubDir $testedPath
