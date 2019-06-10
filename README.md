# RTSP Cloud Camera
Home surveillance using the $29 wireless IP cam from uTalent.


OVERVIEW:
This script allows a Linux machine to save video through an RTSP stream from 
a cheap IP camera. Using Dropbox, the video is then uploaded to the cloud. The 
cloud backup ensures that, should something physically damage the camera or 
computer, the footage will remain accessible.


COMPONENTS USED:
- uTalent X-series IP Camera: http://cd.ipcamdata.com/en/xseries.html 
- Linux Machine: Samsung Chromebook with Ubuntu via Crouton and 64 GB SD card
- Home WiFi Network
- Dropbox account with ~4 GB of storage


INSTRUCTIONS:
Place script stream.sh wherever desired. Update variables to your environment.
Install nautilus-dropbox and connect it to your Dropbox account.
Create a symlink in ~/Dropbox to wherever you store files.
The symlink is preferred as it allows the video to be stored off-HDD.
Then, create a crontab to run for whatever length of time you prefer.
e.g. every minute: $ * * * * * ~/ipcam/stream.sh
Minute-length videos are suggested, along with deleting videos older than 
two days to save disk/Dropbox storage space.

Create crontab with 
$ crontab -e

If cron is not automatically running (using Crouton), start cron with
$ sudo cron
Or put "exec cron" before "exit 0" in /etc/rc.local

Additionally, while using Crouton I have found the need to run
$ sudo hostname <Chromebook's local IP address>
each time the Chromebook is restarted. Otherwise, VLC errs.


Enjoy!