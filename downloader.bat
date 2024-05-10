@echo off
:: add temporary path as the essential programs which help to run this program
set PATH=%PATH%;"%cd%\bin"
set PATH=%PATH%;"%cd%\bin\ffmpeg-6.1-essentials_build\bin"
set PATH=%PATH%;"%cd%\bin\Bento4-SDK-1-6-0-640.x86_64-microsoft-win32\bin"
set DEFAULT_PATH=%UserProfile%/downloads
title Media Downloader
:: for deleting last called scripts showing date
cls

::------------------------------------------------------------------------------------------------------------------------------
:main_menu  
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=50
set /a lines=(%column%/5)*2
mode con: cols=%column% lines=%lines%             
cls
title Main Menu
echo [7m                     Main Menu                    [0m
echo.
echo [0] - Check link
echo [1] - Social Media And MPD URL Downloader
echo [2] - TS And M3U8 URL Downloader
echo [3] - Zoom Recorded Video Downloader
echo [4] - Advanced Unprotected Video Downloader
echo [5] - Protected Media Downloader
echo [6] - Update
echo [d] - Exit
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p choice="[7mChoice [32m[1/2/3/4/5/6/d][0m "
echo.
if /I "[%choice%]"=="[0]" goto :chec
if /I "[%choice%]"=="[1]" goto :smamud
if /I "[%choice%]"=="[2]" goto :tamud
if /I "[%choice%]"=="[3]" goto :zrvd
if /I "[%choice%]"=="[4]" goto :auvd
if /I "[%choice%]"=="[5]" goto :pmd
if /I "[%choice%]"=="[6]" goto :upt
if /I "[%choice%]"=="[d]" goto :EOF
goto :main_menu
::------------------------------------------------------------------------------------------------------------------------------
:smamud
cls
title Social Media And MPD URL Downloader
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo [7m                                                    [36mSocial Media And MPD URL Downloader                                           [0m
echo.
echo.
set /p yrl="[7mEnter url[0m "
echo.
yt-dlp -F %yrl%
echo.
set /p yrd="[7mEnter Video ID[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --embed-chapters --embed-thumbnail --embed-metadata --xattrs --embed-info-json --write-auto-subs --all-subs --embed-subs --progress --merge-output-format mkv --downloader aria2c -P "%DEFAULT_PATH%" -f %yrd%+ba %yrl%
echo.
title Social Media And MPD URL Downloader
echo [91mThe operation did successfully.[0m
echo [91mWhen the video didn't downloaded, check your inputs or update the software or check your connection.[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :smamud
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::------------------------------------------------------------------------------------------------------------------------------
:zrvd
cls
title Zoom Recorded Video Downloader
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo [7m                                                    [33mZoom Recorded Video Downloader                                                [0m
echo.
echo.
set /p zurl="[7mEnter url here[0m "
set /p zpwd="[7mEnter passcode[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --merge-output-format mkv --downloader aria2c -P "%DEFAULT_PATH%" --video-password %zpwd% -f bv+ba %zurl%
echo.
title Zoom Recorded Video Downloader
echo [91mThe operation did successfully.[0m
echo [91mWhen the video didn't downloaded, check your inputs or update the software or check your connection.[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :zrvd
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::------------------------------------------------------------------------------------------------------------------------------
:tamud
cls
title TS And M3U8 URL Downloader
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo [7m                                                    [36mTS And M3U8 URL Downloader                                                    [0m
echo.
echo.
set /p yrl="[7mEnter url[0m "
echo.
yt-dlp -F %yrl%
echo.
set /p yrd="[7mEnter file ID[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --embed-chapters --embed-thumbnail --embed-metadata --xattrs --embed-info-json --write-auto-subs --all-subs --embed-subs --progress --downloader aria2c -P "%DEFAULT_PATH%" -f %yrd% %yrl%
echo.
title TS And M3U8 URL Downloader
echo [91mThe operation did successfully.[0m
echo [91mWhen the video didn't downloaded, check your inputs or update the software or check your connection.[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :tamud
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::------------------------------------------------------------------------------------------------------------------------------
:auvd
cls
title Advanced Unprotected Video Downloader
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo [7m                                                    [36mAdvanced Unprotected Video Downloader                                         [0m
echo.
echo.
set /p yrl="[7mEnter url[0m "
echo.
yt-dlp -F %yrl%
echo.
set /p yrd="[7mEnter Video ID[0m "
echo.
set /p yrad="[7mEnter Audio ID[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --embed-chapters --embed-thumbnail --embed-metadata --xattrs --embed-info-json --write-auto-subs --all-subs --embed-subs --progress --merge-output-format mkv --downloader aria2c -P "%DEFAULT_PATH%" -f %yrd%+%yrad% %yrl%
echo.
title Social Media And MPD URL Downloader
echo [91mThe operation did successfully.[0m
echo [91mWhen the video didn't downloaded, check your inputs or update the software or check your connection.[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :auvd
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:pmd
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%           
cls
title Protected media downloader
echo [7m                                    [33mProtected Media Downloader                                      [0m
echo.
echo.
echo.
echo  [7m[+][0m MPD Link DRM both files which have correct file type
echo           [1]   (Not cenc)      [2]    (cenc)
echo.
echo.
echo  [7m[+][0m MPD Link DRM both files which have video file type
echo           [3]   (Not cenc)      [4]    (cenc)
echo.
echo.
echo  [5] MP4 Link DRM both files which have correct file type
echo.
echo.
echo  [6] MP4 Link DRM both files which have video file type
echo.
echo.
echo  [7m[+][0m Protected only Audio file download
echo           [7]   (not cenc)      [8]     (cenc)
echo.
echo.
echo  [7m[+][0m Protected only Video download
echo           [9]   (not cenc)      [10]    (cenc)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p choice="[7mChoice [32m[1/2/3/4/5/6/7/8/9/10][0m "
echo.
if /I "[%choice%]"=="[1]" goto :mpd1
if /I "[%choice%]"=="[2]" goto :mpd2
if /I "[%choice%]"=="[3]" goto :mpd3
if /I "[%choice%]"=="[4]" goto :mpd4
if /I "[%choice%]"=="[5]" goto :mpd1
if /I "[%choice%]"=="[6]" goto :mpd4
if /I "[%choice%]"=="[7]" goto :mpd7
if /I "[%choice%]"=="[8]" goto :mpd8
if /I "[%choice%]"=="[9]" goto :mpd9
if /I "[%choice%]"=="[10]" goto :mpd10
if /I "[%choice%]"=="[d]" goto :EOF
goto :main_menu
::---------------------------------------------------------------------------------------------------------------------------------
::---------------------------------------------------------------------------------------------------------------------------------
:mpd1
cls
mkdir "%UserProfile%/videos/cdncache"
attrib +h "%UserProfile%/videos/cdncache"
title MPD Link DRM both files which have correct file type (not cenc) and MPD Link DRM both files which have correct file type
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo.
echo [32m*For several sources, The both files key is hex key   [0m
echo.
set /p mpd="[7mEnter url[0m "
echo.
set /p kid="[7mEnter kid key[0m "
echo.
set /p hex="[7mEnter hex Key[0m "
echo.
set /p name="[7mOutput file name[0m "
echo.
yt-dlp -F %mpd%
echo.
set /p vd="[7mEnter video id[0m "
echo.
set /p ad="[7mEnter audio id[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" -f %ad% %mpd%
cd
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" -f %vd% %mpd%
ffmpeg -hide_banner -decryption_key %kid% -i "%UserProfile%/videos/cdncache/encrypted_video.mp4" -codec copy "%UserProfile%/videos/cdncache/decrypted_video.mp4"
ffmpeg -hide_banner -decryption_key %hex% -i "%UserProfile%/videos/cdncache/encrypted_audio.m4a" -codec copy "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
ffmpeg -hide_banner -i "%UserProfile%/videos/cdncache/decrypted_video.mp4" -i "%UserProfile%/videos/cdncache/decrypted_audio.m4a" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move %UserProfile%/videos/cdncache/output.mp4 "%DEFAULT_PATH%"
ren "%DEFAULT_PATH%/output.mp4" "%DEFAULT_PATH%/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
title MPD Link DRM both files which have correct file type (not cenc) and MPD Link DRM both files which have correct file typeecho.
echo.
echo [33mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :mpd2
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:mpd2
cls
mkdir "%UserProfile%/videos/cdncache"
attrib +h "%UserProfile%/videos/cdncache"
title MPD Link DRM both files which have correct file type (cenc)
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo.
echo [32m*For several sources, The both files key is hex key   [0m
echo.
set /p mpd="[7mEnter url[0m "
echo.
set /p kid="[7mEnter kid key[0m "
echo.
set /p hex="[7mEnter hex Key[0m "
echo.
set /p name="[7mOutput file name[0m "
echo.
yt-dlp -F %mpd%
echo.
set /p vd="[7mEnter video id[0m "
echo.
set /p ad="[7mEnter audio id[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" -f %ad% %mpd%
cd
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" -f %vd% %mpd%
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_video.mp4" "%UserProfile%/videos/cdncache/decrypted_video.mp4"
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_audio.m4a" "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
ffmpeg -hide_banner -i "%UserProfile%/videos/cdncache/decrypted_video.mp4" -i "%UserProfile%/videos/cdncache/decrypted_audio.m4a" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move %UserProfile%/videos/cdncache/output.mp4 "%DEFAULT_PATH%"
ren "%DEFAULT_PATH%/output.mp4" "%DEFAULT_PATH%/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
title MPD Link DRM both files which have correct file type (cenc)
echo.
echo.
echo [33mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :mpd2
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:mpd3
cls
mkdir "%UserProfile%/videos/cdncache"
attrib +h "%UserProfile%/videos/cdncache"
title MPD Link DRM both files which have video file type (not cenc)
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo.
echo [32m*For several sources, The both files key is hex key   [0m
echo.
set /p mpd="[7mEnter url[0m "
echo.
set /p kid="[7mEnter kid key[0m "
echo.
set /p hex="[7mEnter hex Key[0m "
echo.
set /p name="[7mOutput file name[0m "
echo.
yt-dlp -F %mpd%
echo.
set /p vd="[7mEnter video id[0m "
echo.
set /p ad="[7mEnter audio id[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_audio.mp4" -f %ad% %mpd%
cd
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" -f %vd% %mpd%
ffmpeg -hide_banner -decryption_key %kid% -i "%UserProfile%/videos/cdncache/encrypted_video.mp4" -codec copy "%UserProfile%/videos/cdncache/decrypted_video.mp4"
ffmpeg -hide_banner -decryption_key %hex% -i "%UserProfile%/videos/cdncache/encrypted_audio.mp4" -codec copy "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
ffmpeg -hide_banner -i "%UserProfile%/videos/cdncache/decrypted_video.mp4" -i "%UserProfile%/videos/cdncache/decrypted_audio.m4a" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move %UserProfile%/videos/cdncache/output.mp4 "%DEFAULT_PATH%"
ren "%DEFAULT_PATH%/output.mp4" "%DEFAULT_PATH%/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.mp4"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
title MPD Link DRM both files which have video file type (not cenc)
echo.
echo.
echo [33mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :mpd3
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:mpd4
cls
mkdir "%UserProfile%/videos/cdncache"
attrib +h "%UserProfile%/videos/cdncache"
title MPD Link DRM both files which have video file type (cenc) And MP4 Link DRM both files which have video file type
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo.
echo [32m*For several sources, The both files key is hex key   [0m
echo.
set /p mpd="[7mEnter url[0m "
echo.
set /p kid="[7mEnter kid key[0m "
echo.
set /p hex="[7mEnter hex Key[0m "
echo.
set /p name="[7mOutput file name[0m "
echo.
yt-dlp -F %mpd%
echo.
set /p vd="[7mEnter video id[0m "
echo.
set /p ad="[7mEnter audio id[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" -f %ad% %mpd%
cd
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" -f %vd% %mpd%
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_video.mp4" "%UserProfile%/videos/cdncache/decrypted_video.mp4"
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_audio.mp4" "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
ffmpeg -hide_banner -i "%UserProfile%/videos/cdncache/decrypted_video.mp4" -i "%UserProfile%/videos/cdncache/decrypted_audio.m4a" -y -acodec copy -vcodec copy "%UserProfile%/videos/cdncache/output.mp4"
move %UserProfile%/videos/cdncache/output.mp4 "%DEFAULT_PATH%"
ren "%DEFAULT_PATH%/output.mp4" "%DEFAULT_PATH%/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_video.mp4"
del /f "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.mp4"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
title MPD Link DRM both files which have video file type (cenc)
echo.
echo.
echo [33mIf the video is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :mpd4
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:mpd7
cls
mkdir "%UserProfile%/videos/cdncache"
attrib +h "%UserProfile%/videos/cdncache"
title Protected only Audio file download (not cenc)
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo.
echo [32m*For several sources, The both files key is hex key[0m
echo.
set /p mpd="[7mEnter url here[0m "
echo.
set /p hex="[7mEnter audio Key[0m "
echo.
set /p name="[7mOutput file name[0m "
echo.
echo.
yt-dlp -F %mpd%
echo.
echo.
set /p ad="[7mEnter audio id here[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" -f %ad% %mpd%
ffmpeg -hide_banner -decryption_key %hex% -i "%UserProfile%/videos/cdncache/encrypted_audio.m4a" -codec copy "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
move %UserProfile%/videos/cdncache/decrypted_audio.m4a" "%DEFAULT_PATH%"
ren "%DEFAULT_PATH%/decrypted_audio.m4a" "%DEFAULT_PATH%/%name%.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
title Protected only Audio file download (not cenc)
echo.
echo.
echo [33mIf the audio is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :mpd7
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:mpd8
cls
mkdir "%UserProfile%/videos/cdncache"
attrib +h "%UserProfile%/videos/cdncache"
title Protected only Audio file download (cenc)
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo.
echo [32m*For several sources, The both files key is hex key[0m
echo.
set /p mpd="[7mEnter url[0m "
echo.
set /p kid="[7mEnter kid key[0m "
echo.
set /p hex="[7mEnter hex Key[0m "
echo.
set /p name="[7mOutput file name[0m "
echo.
yt-dlp -F %mpd%
echo.
set /p ad="[7mEnter audio id[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_audio.m4a" -f %ad% %mpd%
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_audio.m4a" "%UserProfile%/videos/cdncache/decrypted_audio.m4a"
move %UserProfile%/videos/cdncache/decrypted_audio.m4a" "%DEFAULT_PATH%"
ren "%DEFAULT_PATH%/decrypted_audio.m4a" "%DEFAULT_PATH%/%name%.m4a"
del /f "%UserProfile%/videos/cdncache/encrypted_audio.m4a"
title Protected only Audio file download (cenc)
echo.
echo.
echo [33mIf the audio is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :mpd8
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:mpd9
cls
mkdir "%UserProfile%/videos/cdncache"
attrib +h "%UserProfile%/videos/cdncache"
title Protected only video download (not cenc)
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo.
echo [32m*For several sources, The both files key is hex key[0m
echo.
set /p mpd="[7mEnter url here[0m "
echo.
set /p hex="[7mEnter video Key[0m "
echo.
set /p name="[7mOutput file name[0m "
echo.
echo.
yt-dlp -F %mpd%
echo.
echo.
set /p ad="[7mEnter video id here[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" -f %ad% %mpd%
ffmpeg -hide_banner -decryption_key %hex% -i "%UserProfile%/videos/cdncache/encrypted_video.mp4" -codec copy "%UserProfile%/videos/cdncache/decrypted_video.mp4"
move %UserProfile%/videos/cdncache/decrypted_video.mp4" "%DEFAULT_PATH%"
ren "%DEFAULT_PATH%/decrypted_video.m4a" "%DEFAULT_PATH%/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
title Protected only video download (not cenc)
echo.
echo.
echo [33mIf the audio is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :mpd9
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:mpd10
cls
mkdir "%UserProfile%/videos/cdncache"
attrib +h "%UserProfile%/videos/cdncache"
title Protected only video file download (cenc)
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo.
echo [32m*For several sources, The both files key is hex key[0m
echo.
set /p mpd="[7mEnter url[0m "
echo.
set /p kid="[7mEnter kid key[0m "
echo.
set /p hex="[7mEnter hex Key[0m "
echo.
set /p name="[7mOutput file name[0m "
echo.
yt-dlp -F %mpd%
echo.
set /p ad="[7mEnter video id[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp --console-title --progress-template "download-title:%(info.id)s-%(progress.eta)s" --progress --downloader aria2c --no-check-certificate -o "%UserProfile%/videos/cdncache/encrypted_video.mp4" -f %ad% %mpd%
mp4decrypt --key %kid%:%hex% "%UserProfile%/videos/cdncache/encrypted_video.mp4" "%UserProfile%/videos/cdncache/decrypted_video.mp4"
move %UserProfile%/videos/cdncache/decrypted_video.mp4" "%DEFAULT_PATH%"
ren "%DEFAULT_PATH%/decrypted_video.mp4" "%DEFAULT_PATH%/%name%.mp4"
del /f "%UserProfile%/videos/cdncache/encrypted_video.mp4"
title Protected only Audio file download (cenc)
echo.
echo.
echo [33mIf the audio is successfully downloaded, it will be included in your downloads.
echo If not, check out what happened by above[0m
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Download again another one
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :mpd10
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:chec
cls
title Check link
:: source - https://stackoverflow.com/questions/32077753/mode-con-cols-xx-lines-xx-aesthetics-169-ratio
set column=134
set /a lines=36
mode con: cols=%column% lines=%lines%
echo [7m                                                    [36mCheck Link                                                                    [0m
echo.
echo.
set /p mpd="[7mEnter url[0m "
echo.
echo [92mProcess - [0m
echo.
yt-dlp -F %mpd%
echo.
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Check again
echo [b] - Go back to main menu
echo [c] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :chec
if /I "[%ch1%]"=="[b]" goto :main_menu
if /I "[%ch1%]"=="[c]" goto :EOF
::---------------------------------------------------------------------------------------------------------------------------------
:upt
cls
title Update
set column=100
set /a lines=20
mode con: cols=%column% lines=%lines%

echo Updating yt-dlp...
yt-dlp -U
echo Done.

echo.
echo.
echo [7m opt[35mion[0m 
echo.
echo [a] - Go back to main menu
echo [b] - exit
echo.
set /p ch1="[7mChoice [32m[a/b/c][0m "
if /I "[%ch1%]"=="[a]" goto :main_menu
if /I "[%ch1%]"=="[b]" goto :EOF
