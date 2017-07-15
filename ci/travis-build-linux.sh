#!/bin/sh

# This file is an (almost) exact copy from the build bash script from 
# http://bataribasic.com/download.html. The only thing that 
# was changed was the exit constant when the compilation and the 
# assembly failed. This was done so the CI system is able to tell that 
# something was wrong with the build.

echo "Starting build of $1"
preprocess<$1 | 2600basic -i $bB>bB.asm
if [ "$?" -ne "0" ]
 then
  echo "Compilation failed."
  exit 1
fi
if [ "$2" = "-O" ]
  then
   postprocess -i $bB|optimize>$1.asm
  else
   postprocess -i $bB>$1.asm
fi
dasm $1.asm -I$bB/includes -f3 -o$1.bin | sed '/Label mismatch/d' \
| sed '/shakescreen/d;/rand16/d;/debugscore/d;/pfscore/d;/noscore/d;/vblank_bB_code/d;/PFcolorandheight/d;/pfrowheight/d;/pfres/d;/PFmaskvalue/d;/overscan_time/d;/vblank_time/d;/no_blank_lines/d;/superchip/d;/ROM2k/d;/NO_ILLEGAL_OPCODES/d;/minikernel/d;/debugcycles/d;/mincycles/d;/legacy/d;/PFcolors/d;/playercolors/d;/player1colors/d;/backgroundchange/d;/readpaddle/d;/multisprite/d;/PFheights/d;/bankswitch/d;/Unresolved Symbols/d' \
| sed '2,/-->/!{ /-->/,/-->/d; }'\
| sed 's/--> 0./Possible duplicate label: /' 
if [ "$?" -ne "0" ]
 then
  echo "Assembly failed."
  exit 1
fi
echo "Build complete."
exit 0
