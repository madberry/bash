#!/bin/bash
#Need two dropboxes?
#You willl need to create the dropbox alt first:
#cp .dropbox .dropbox-new
#Then run:
#HOME=~/.dropbox-new ~/.dropbox-dist/dropbox start -i
#After that run this script to sync files.
#Run this script as an autostartup script.
#System Settings->Startup and Shutdown add as script here.
HOME=~/.dropbox-new ~/.dropbox-dist/dropbox start & 
