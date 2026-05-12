# Disable power saving mode
# sudo iwconfig wlan0 power off
# sudo systemctl restart iwd

iwctl station wlan0 scan
iwctl station wlan0 get-networks

