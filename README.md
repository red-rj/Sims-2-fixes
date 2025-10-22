# Running The Sims 2 in the big {CURRENT_YEAR}

The Sims 2 is a classic, but since it's older then dirt it can hard to get working on a PC from this decade.
So I decided to package the changes I made and make a guide.

## Instructions
1. Download this repo `[<> Code] -> Download zip`, extract and open
0. Open `Graphics Rules.sgr` in notepad, search for "newRes", you should see:

        # HACK
        # set your monitor resolution here
        seti newResWidth 1920
        seti newResHeight 1080

    change `newResWidth` and `newResHeight` to your monitor's width and height
    
    **NOTE:** resolutions bigger then 1920x1080 will make the UI and text look small

0. Copy `Graphics Rules.sgr` to the correct path:
    - Ultimate Collection: `Program Files/EA Games/The Sims 2 Ultimate Collection/Fun with Pets/SP9/TSData/Res/Config`
    - Other (Physical): you'll have to figure out the exact path cause it depends on your latest expansion, 
      but it'll always end in `/TSData/Res/Config`.
0. Download [Sim Shadow Fix](https://modthesims.info/d/569585/sim-shadow-fix.html), pick whichever version looks
best for you.
0. extract the `.package` file to `Documents/EA Games/The Sims 2/Download`.
    - if the folder doesn't exist, create it.
0. Copy `userstartup.cheat` to `Documents/EA Games/The Sims 2/Config`.
    - if the folder doesn't exist, create it.
0. _Linux/Steam Deck:_ download [sims2_fixes.tar.xz](https://github.com/tannisroot/installer-fixes/raw/master/sims2_fixes.tar.xz), extract and copy `thumnails_fix.package` to `Documents/EA Games/The Sims 2/Download`. Don't copy `simShadowFix`, we already did above.
0. Launch game, goto settings and set the resolution and settings.
0. Enjoy!

## Note for Linux/Steam Deck enjoyers
When following this guide, all paths are relative to the Prefix used by your compatibility tool (Bottles, Lutris, PlayOnLinux). 

## Reference

- http://simsvip.com/2014/07/20/the-sims-2-ultimate-collection-increase-resolution-guide/
- https://github.com/tannisroot/installer-fixes


notes:
---
        also ref http://modthesims.info/d/569585

        Graphics Rules.sgr can be installed/replaced here:
        Sims 2 (game or expansion pack)/TSData/Res/Config/

        Edit 2019/06/21:
        Install these mods: https://github.com/tannisroot/installer-fixes/raw/master/sims2_fixes.tar.xz
        simNopke-simShadowFix0.4 - Shadows fix for modern hardware
        thumbnails_fix - Linux/Wine Fix (Not must have for Windows OS Users)
        Install Location:

        Windows Users/%username%/Documents/EA Games/The Sims 2/Downloads/
        Linux /home/$username/Documents/EA Games/The Sims 2/Downloads/
        Or I you're using Lutris/PlayOnLinux consider finding your chosen path or environment name


        Note: userstartup.cheat is located in Documents/EA Games/The Sims 2/Config/
        Linux/Wine users may want to consider and have
        boolprop useshaders true
        boolProp   createNVidiaWorkaroundTexture false
        boolProp   bumpMapping false

Ref:
---
        Graphics Rules.sgr: ...\The Sims 2 Ultimate Collection\Fun with Pets\SP9\TSData\Res\Config
        userstartup.cheat: ../Documents/EA Games/The Sims 2/Config/
        *.package: Documents\EA Games\The Sims 2\Downloads

        http://simsvip.com/2014/07/20/the-sims-2-ultimate-collection-increase-resolution-guide/
        https://github.com/retrodump/Sims-2-graphics-rules
        https://github.com/tannisroot/installer-fixes