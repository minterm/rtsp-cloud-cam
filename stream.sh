#/bin/bash
interval=60 #n*60
current_ip=192.168.1.11
rtsp_username=bushstanks321
rtsp_password=wutup5
rtsp_ip=192.168.1.10
rtsp_port=554
save_dir=/var/host/media/removable/UNTITLED/ipcam_videos
## If first time running on startup:
#sudo hostname $current_ip
sudo hostname minterm
#hostname
find $save_dir/ -mtime +2 -type f -delete # +2 means >= 3 days deleted
now=$(date +"%Y-%m-%d_%H-%M-%S")
timeout $interval cvlc rtsp://$rtsp_username:$rtsp_password@$rtsp_ip:$rtsp_port/live/ch0 --sout="#transcode{vcodec=h264,acodec=mp3}:std{access=file,mux=mp4,dst=$save_dir/$now.mp4,no-overwrite}" --sout-keep
#vlc rtsp://$rtsp_username:$rtsp_password@$rtsp_ip:$rtsp_port/live/ch0 
