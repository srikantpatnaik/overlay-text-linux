#!/bin/bash

# For reference
# echo -n "Arduino is an opensource hardware + software" | osd_cat -f -adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1 --color=blue  --pos=bottom    --align=center   --offset=-100   --indent=20 -A center -d 500 -s 1
# To select fonts use 'xfontsel -print'

font='-adobe-helvetica-bold-r-normal--34-240-100-100-p-182-iso8859-1'
align='left' #left, right, center
delay='1200' # 20 minutes
color='brown'
shadow='1'
t_position='top' #top, middle, bottom
t_offset='40' # vertical offset
t_indent='140' # horizontal offset
b_position='bottom' #top, middle, bottom
b_offset='-50' # vertical offset
b_indent='140' # horizontal offset


if [ "$1" == '-t' ]
then
       printf '%s\n%s\n%s\n%s\n' "$2" "$3" "$4" "$5" \
       | osd_cat \
       --font=$font \
       --color=$color \
       --align=$align \
       --indent=$t_indent \
       --delay=$delay \
       --shadow=$shadow \
       --pos=$t_position \
       --offset=$t_offset
fi

if [ "$1" == '-b' ]
then
       printf '%s\n%s\n%s\n%s\n' "$2" "$3" "$4" "$5"\
       | osd_cat \
       --font=$font \
       --color=$color \
       --align=$align \
       --indent=$b_indent \
       --delay=$delay \
       --shadow=$shadow \
       --pos=$b_position \
       --offset=$b_offset
fi
