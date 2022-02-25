@ECHO OFF
SET FILE=%1
SET PARAMS= -flatten -verbose

:CHECK_INSTALLATION
convert -version >NUL 2>&1
IF NOT [%ERRORLEVEL%]==[1] GOTO IMAGEMAGICK_NOT_FOUND
identify -version >NUL 2>&1
IF NOT [%ERRORLEVEL%]==[1] GOTO IMAGEMAGICK_NOT_FOUND

:CHECK_IMAGE_FILE
IF [%FILE%]==[] GOTO PRINT_USAGE
IF NOT EXIST %FILE% GOTO FILE_NOT_FOUND
identify -ping %FILE% >NUL 2>&1
IF NOT [%ERRORLEVEL%]==[0] GOTO IMAGE_NOT_VALID

:CROP_AND_SAVE
convert %FILE% %PARAMS% -crop 530x31+400+480 BMP3:info_head_list.bmp
convert %FILE% %PARAMS% -crop 8x8+895+572 BMP3:info_bottom.bmp
convert %FILE% %PARAMS% -crop 8x8+882+572 BMP3:info_bottomleft.bmp
convert %FILE% %PARAMS% -crop 23x8+908+572 BMP3:info_bottomright.bmp
convert %FILE% %PARAMS% -crop 401x31+530+520 BMP3:info_head.bmp
convert %FILE% %PARAMS% -crop 8x8+882+559 BMP3:info_left.bmp
convert %FILE% %PARAMS% -crop 23x8+908+559 BMP3:info_right.bmp
convert %FILE% %PARAMS% -crop 273x11+697+401 BMP3:knob_amp.bmp
convert %FILE% %PARAMS% -crop 99x11+557+407 BMP3:knob_balance.bmp
convert %FILE% %PARAMS% -crop 11x105+980+401 BMP3:knob_eq.bmp
convert %FILE% %PARAMS% -crop 99x11+871+420 BMP3:knob_pansep.bmp
convert %FILE% %PARAMS% -crop 257x11+400+423 BMP3:knob_pos.bmp
convert %FILE% %PARAMS% -crop 150x11+400+407 BMP3:knob_volume.bmp
convert %FILE% %PARAMS% -crop 126x2+400+400 BMP3:level.bmp
convert %FILE% %PARAMS% -crop 26x14+730+20 BMP3:mark_play.bmp
convert %FILE% %PARAMS% -crop 26x14+760+20 BMP3:mark_queue.bmp
convert %FILE% %PARAMS% -crop 350x180+20+370 BMP3:panel_list.bmp
convert %FILE% %PARAMS% -crop 350x180+20+120 BMP3:panel_main.bmp
convert %FILE% %PARAMS% -crop 630x26+20+20 BMP3:panel_mini.bmp
convert %FILE% %PARAMS% -crop 350x180+400+121 BMP3:panel_output.bmp
convert %FILE% %PARAMS% -crop 14x30+710+20 BMP3:scroller.bmp
convert %FILE% %PARAMS% -crop 3x11+700+20 BMP3:slider_horiz.bmp
convert %FILE% %PARAMS% -crop 11x3+680+20 BMP3:slider_vert.bmp
convert %FILE% %PARAMS% -crop 42x19+701+306 BMP3:tick_autoset.bmp
convert %FILE% %PARAMS% -crop 19x19+881+457 BMP3:tick_autosize.bmp
convert %FILE% %PARAMS% -crop 19x19+289+555 BMP3:tick_loop.bmp
convert %FILE% %PARAMS% -crop 19x19+557+457 BMP3:tick_loop_info.bmp
convert %FILE% %PARAMS% -crop 42x19+81+555 BMP3:tick_queue.bmp
convert %FILE% %PARAMS% -crop 19x19+266+555 BMP3:tick_random.bmp
convert %FILE% %PARAMS% -crop 19x19+537+457 BMP3:tick_random_info.bmp
convert %FILE% %PARAMS% -crop 19x38+570+51 BMP3:button_loop_mini.bmp
convert %FILE% %PARAMS% -crop 19x19+527+51 BMP3:button_pause_mini.bmp
convert %FILE% %PARAMS% -crop 38x38+228+305 BMP3:button_loop.bmp
convert %FILE% %PARAMS% -crop 38x19+108+305 BMP3:button_pause.bmp
convert %FILE% %PARAMS% -crop 70x19+407+306 BMP3:button_eq.bmp
convert %FILE% %PARAMS% -crop 71x57+481+306 BMP3:button_amp.bmp
convert %FILE% %PARAMS% -crop 62x19+556+306 BMP3:button_reverb.bmp
convert %FILE% %PARAMS% -crop 48x18+672+562 BMP3:button_info_gen.bmp
convert %FILE% %PARAMS% -crop 53x18+721+562 BMP3:button_info_mes.bmp
convert %FILE% %PARAMS% -crop 50x18+775+562 BMP3:button_info_sam.bmp
convert %FILE% %PARAMS% -crop 44x18+826+562 BMP3:button_info_vis.bmp
convert %FILE% %PARAMS% -crop 107x176+755+121 BMP3:button_interp.bmp
convert %FILE% %PARAMS% -crop 42x19+467+457 BMP3:button_info_lib.bmp
convert %FILE% %PARAMS% -crop 29x19+437+457 BMP3:button_info_list.bmp
convert %FILE% %PARAMS% -crop 84x150+867+121 BMP3:button_ramp.bmp
convert %FILE% %PARAMS% -crop 61x124+956+121 BMP3:button_surround.bmp
REM
REM To regenerate this list, run:
REM identify -format "convert %%FILE%% %%PARAMS%% -crop %g BMP3:%l\n" skinbase.psd
REM
ECHO Done!
GOTO EXIT

REM --- end of program --------------------------------------------------------

:PRINT_USAGE
ECHO makeskin v1.1 (c) 2008 Tero Niemi (talamus@gmail.com)
ECHO.
ECHO This file is released into Public Domain. No warranty whatsoever!
ECHO.
ECHO Create skin .bmp images from a single image.
ECHO You must have ImageMagick installed for this to work.
ECHO Get it from: http://www.imagemagick.org/
ECHO.
ECHO USAGE:  %0 img
ECHO.
ECHO WHERE:
ECHO   img   Image file to be processed.
ECHO         Any ImageMagick supported format is okay.
ECHO.
ECHO EXAMPLES:
ECHO.
ECHO   $ %0 skin.psd
ECHO         Create skin from file 'skin.psd'
ECHO.
ECHO   $ %0 skin_pink.png
ECHO         Create skin from file 'skin_pink.png'
GOTO EXIT

:IMAGEMAGICK_NOT_FOUND
ECHO.
ECHO ImageMagick not installed or not in path.
ECHO Check the installation or download it from:
ECHO http://www.imagemagick.org/
GOTO EXIT

:FILE_NOT_FOUND
ECHO.
ECHO File '%FILE%' not found.
GOTO EXIT

:IMAGE_NOT_VALID
ECHO.
ECHO File '%FILE%' is not a valid image file.
GOTO EXIT

:EXIT
SET FILE=
SET PARAMS=
