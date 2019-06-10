#/bin/bash

# User Settings:
interval=60 # in seconds
current_ip=<LINUX MACHINE LOCAL IP ADDRESS>
rtsp_username=<CAMERA USERNAME>
rtsp_password=<CAMERA PASSWORD>
rtsp_ip=<CAMERA LOCAL IP ADDRESS>
rtsp_port=554
save_dir=/<PATH TO STORAGE>/ipcam_videos
my_username=<LINUX MACHINE USERNAME>

## If first time running on startup and using Crouton, run
#sudo hostname $current_ip
# else,
sudo hostname $my_username

# Actual Function:
find $save_dir/ -mtime +2 -type f -delete # +2 means >= 3 days deleted
now=$(date +"%Y-%m-%d_%H-%M-%S")
timeout $interval cvlc rtsp://$rtsp_username:$rtsp_password@$rtsp_ip:$rtsp_port/live/ch0 --sout="#transcode{vcodec=h264,acodec=mp3}:std{access=file,mux=mp4,dst=$save_dir/$now.mp4,no-overwrite}" --sout-keep
