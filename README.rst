README
======

A simple script to allow text overlays on video/screencasts/images or any
application.

It uses ``osd_cat`` command from `xosd-bin` debian/ubuntu package.

Usage
-----

* '-t' : display on top, always first argument

* '-b' : display on bottom, always first argument

Examples
--------
Display two lines on top (max 4 line, or modify the overlay.sh script) ::

	./overlay.sh -t "Arduino is a great opensource project" "The minimal hardware setup and easy APIs makes it great"

Automating / Workarounds
------------------------

You may automate the display using `Autokey` (sudo apt-get install autokey-gtk).

1) You can create a new script say "slide 1" and enter the following as lines ::

	output = system.exec_command("/home/srikant/Documents/overlay-text-linux/overlay.sh -b 'Arduino is an open-source electronics platform' 'based on easy-to-use hardware and software.'")
        keyboard.send_keys(output)

2) Add hotkey setting for "slide 1"

3) To kill the "slide 1" you may have to create another `Autokey` script ::

	output = system.exec_command("killall osd_cat")
	keyboard.send_keys(output)

4) (Optional) The above `killall` command will throw 'notify' error. Which might be
   annoying if you're presenting. The workaround would be disabling notification
   temporary in ``/usr/lib/python2.7/dist-packages/autokey/service.py``.
   Look for the exception handler in ``execute()`` function at the end of the script
   and comment accordingly.




