##
## TODO: ne if-else to check program files regular and x86 7zip location, finish extraction function.
##

$DownloadDestination = "C:\"
$DLSiteNuwen = "https://www.dropbox.com/s/8qlw4a4edyvne5k/MinGW.zip?dl=1"
$DLSiteSDL_Image = "https://www.libsdl.org/projects/SDL_image/release/SDL2_image-devel-2.0.0-mingw.tar.gz"


$DLObject = New-Object system.net.webclient
$DLObject.downloadFile($DLSiteNuwen,$downloadDestination)

$DLObject.downloadFile($DLSiteSDL_Image,$downloadDestination)

#Unblock-File $downloadDestination


$FileNameNuwen = "MinGW.zip"
$FileNameSDL_Image = "SDL2_image-devel-2.0.0-mingw.tar.gz"

##
## FIX HERE
##

if(test-path("C:\Program Files\7-Zip\7z.exe"))#check if x86 or not
{
    start-process 'C:\Program Files\7-Zip\7z.exe' -argumentlist $argumentlist -wait -RedirectStandardOutput $tempfile
}
else
{
    Write-Host saatana missö vitun seiska zippi?!?!?!?!?!?
}