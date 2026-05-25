#!/bin/bash

DEVICE_MAC="CC:14:BC:7A:B5:FA"

# Might need to disable rfkill blocking bluetooth service
# rfkill unblock bluetooth

echo -e "\e[33m // pscript: Unblocking Bluetooth...\e[0m"
rfkill unblock bluetooth

echo -e "\e[33m // pscript: Starting Bluetooth service...\e[0m"
sudo systemctl start bluetooth
sudo systemctl enable bluetooth

# Power on first

bluetoothctl power on
echo -e "\e[33m // pscript: Bluetooth Power On.\e[0m"

# Make client discoverable
bluetoothctl discoverable on

bluetoothctl agent NoInputNoOutput
echo -e "\e[33m // pscript: Bluetooth Agent On, Using NoInputNoOutput.\e[0m"

bluetoothctl scan on
echo -e "\e[33m // pscript: Bluetooth Scan Surrounding Devices.\e[0m"

bluetoothctl pair $DEVICE_MAC
echo -e "\e[33m // pscript: Pairing With Device.\e[0m"

bluetoothctl trust $DEVICE_MAC
echo -e "\e[33m // pscript: Establishing Trust With Device.\e[0m"

echo -e "\e[33m // pscript: Connecting To EDIFIER X2S.\e[0m"
bluetoothctl connect $DEVICE_MAC