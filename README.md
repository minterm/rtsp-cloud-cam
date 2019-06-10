# ipcam
Home security using the $29 wireless IP cam from utalent.

Place script wherever. Update variables to your environment.
Install nautilus-dropbox and connect it to your account.
Create a symlink in ~/Dropbox to wherever you store files.
Then, create a crontab to run whatever length of time you set.
e.g. every minute: $ * * * * * ~/ipcam/stream.sh

Create crontab with 
$ crontab -e

If cron is not automatically running (using Crouton), start cron with
$ sudo cron
Or put "exec cron" before "exit 0" in /etc/rc.local

This was developed on a Samsung Chromebook with Crouton to run Ubuntu.
A symlink is used in the Dropbox folder to allow the storage of files to
take place on an added SD card and not the Chromebook's limited storage.
Additionally, I have found the need to run
$ sudo hostname <Chromebook's local IP address>
each time the Chromebook is restarted. Otherwise, VLC errs.

Enjoy!
