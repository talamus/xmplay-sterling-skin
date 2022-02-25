## Sterling Skinning Kit version 1.1 by Tero Niemi (talamus@gmail.com), 2008

With this skinning kit you can quickly and easily create a "Sterling"
type skin for XMPlay 3.4. All you have to do is:


### The Five Easy Steps

1.  Unzip this package into a new directory under the XMPlay directory.

2.  Open the "skin.psd" template file with your favorite graphics editor.

3.  Adjust the image as you want. It is layered for easy editing!
    Just remember:
    * Keep the green transparency color (00ff00) clean.
    * Keep images where they are. No moving!

4.  Save the image as "skin_variation.png" (or .psd, or something).

5.  Create the skin by executing the following command:

        $ makeskin.bat "skin_variation.png"

Congratulations! You have just created a new skin variation!
Fire up the XMPlay and see what it looks like.

Just make sure that:
* The skin files are located in a subdirectory of XMPlay.
* The six "mask_*.bmp" files are located in the same directory.
* "skinconfig.txt" contains the color and font values you want.

Have fun!


### Requirements (ImageMagick)

You must have ImageMagick graphic utility installed. The "makeskin.bat"
uses it for converting the single skin image into several smaller ones.

You can test if you have ImageMagick installed by executing the
following command:

    $ convert -version

Output should be something like:

    Version: ImageMagick 6.4.0 04/23/08 Q16 http://www.imagemagick.org
    Copyright: Copyright (C) 1999-2008 ImageMagick Studio LLC

If you do not have ImageMagick installed you can get it for free from:<br>
http://www.imagemagick.org/


### Files in This Package

Script program that converts skin template to .bmp files:

    makeskin.bat

The skin template and the default skinconfig.txt:

    skin.psd
    skinconfig_default.txt

Skintext.txt template for skins created with this kit:

    skintext.txt

Example skins created with this kit:

    Sterling Blue (default):
        skin_blue.png
        skinconfig_blue.txt

    Sterling Slate Grey:
        skin_slate.png
        skinconfig_slate.txt

    Sterling Winter Camo:
        skin_wintercamo.png
        skinconfig_wintercamo.txt

    Sterling Army Green:
        skin_armygreen.psd
        skinconfig_armygreen.txt

    Sterling Pink (Hot Pink or OMG!!! Ponies! cute. You decide.):
        skin_pink.png
        skinconfig_pink.txt

    Sterling Hot Dog Stand (Tribute to the most horrible Windows theme ever):
        skin_hotdog.png
        skinconfig_hotdog.txt

    Sterling Zune Brown (Tribute to the incredibly ugly tech device):
        skin_zune.png
        skinconfig_zune.txt

    Sterling Baby Blue:
        skin_babyblue.png
        skinconfig_babyblue.txt

All variations share the following mask files:
    mask_info.bmp
    mask_info_list.bmp
    mask_list.bmp
    mask_main.bmp
    mask_mini.bmp
    mask_output.bmp

The following files are automatically generated when makeskin.bat is executed:

    button_amp.bmp
    button_eq.bmp
    button_info_gen.bmp
    button_info_lib.bmp
    button_info_list.bmp
    button_info_mes.bmp
    button_info_sam.bmp
    button_info_vis.bmp
    button_interp.bmp
    button_loop.bmp
    button_loop_mini.bmp
    button_pause.bmp
    button_pause_mini.bmp
    button_ramp.bmp
    button_reverb.bmp
    button_surround.bmp
    info_bottom.bmp
    info_bottomleft.bmp
    info_bottomright.bmp
    info_head.bmp
    info_head_list.bmp
    info_left.bmp
    info_right.bmp
    knob_amp.bmp
    knob_balance.bmp
    knob_eq.bmp
    knob_pansep.bmp
    knob_pos.bmp
    knob_volume.bmp
    level.bmp
    mark_play.bmp
    mark_queue.bmp
    panel_list.bmp
    panel_main.bmp
    panel_mini.bmp
    panel_output.bmp
    scroller.bmp
    slider_horiz.bmp
    slider_vert.bmp
    tick_autoset.bmp
    tick_autosize.bmp
    tick_loop.bmp
    tick_loop_info.bmp
    tick_queue.bmp
    tick_random.bmp
    tick_random_info.bmp
