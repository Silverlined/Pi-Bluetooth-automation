#!/bin/bash
if [ "$#" != 1 ] || [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
    echo 'Usage: play.sh <words> [-h][--help]'
    exit 1
fi
sudo pico2wave -w tmp.wav "$1"
sudo paplay -d "bluez_sink.20_74_CF_1B_9C_10.a2dp_sink" -v ./tmp.wav
sudo rm tmp.wav
