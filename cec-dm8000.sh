#!/bin/bash
while read input
do
   keyline=$(echo $input | grep " key pressed" | grep "current")
   if [ -n "$keyline" ]; then
      echo "checking => $keyline"
      strpressed=$(echo $keyline | awk '{print $6 $7}')
      echo "found $strpressed"

      if [ -n "$strpressed" ]; then
         case "$strpressed" in
            "up(1)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=103'
                ;;
            "down(2)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=108'
                ;;
            "left(3)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=105'
                ;;
            "right(4)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=106'
                ;;
            "channeldown")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=105'
                ;;
            "channelup")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=106'
                ;;
            "select(0)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=352'
                ;;
            "exit(d)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=174'
                ;;
            "record(47)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=167'
                ;;
            "pause(46)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=164'
                ;;
            "rewind(48)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?command=168'
                ;;
            "Fastforward")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?command=208'
                ;;
            "play(44)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=164'
                ;;
            "subpicture")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=139'
                ;;
            "electronicprogram")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=358'
                ;;
            "contentsmenu")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?command=393'
                ;;
            "previouschannel")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?command=402'
                ;;
            "F1(blue)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=401'
                ;;
            "F2(red)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=398'
                ;;
            "F3(green)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=399'
                ;;
            "F4(yellow)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=400'
                ;;
            "0(20)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=11'
                ;;
            "1(21)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=2'
                ;;
            "2(22)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=3'
                ;;
            "3(23)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=4'
                ;;
            "4(24)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=5'
                ;;
            "5(25)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=6'
                ;;
            "6(26)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=7'
                ;;
            "7(27)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=8'
                ;;
            "8(28)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=9'
                ;;
            "9(29)")
	        wget -O /dev/null 'http://127.0.0.1/api/remotecontrol?type=long&command=10'
                ;;
         esac
      fi
   fi
done

