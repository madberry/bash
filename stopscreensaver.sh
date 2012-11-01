#!/bin/bash
#stop screen saver for KDE
while /bin/true; do qdbus org.freedesktop.ScreenSaver /ScreenSaver SimulateUserActivity > /dev/null; sleep 1m; done
