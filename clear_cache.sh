#/bin/bash
dropbox stop
rm -rf /home/<USER>/Dropbox/.dropbox.cache/*
dropbox start
