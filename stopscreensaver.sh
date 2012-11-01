#!/bin/bash
#stop screen saver for KDE
#screen saver willl be stopped as long as this file runs
#Handy for long flash video etc.
while /bin/true; do qdbus org.freedesktop.ScreenSaver /ScreenSaver SimulateUserActivity > /dev/null; sleep 1m; done
