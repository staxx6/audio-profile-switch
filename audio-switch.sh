#!/bin/bash



pacmd info | egrep device.profile.name # get current profile

pacmd set-card-profile 0 output:analog-stereo # LAPTOP
pacmd set-card-profile 0 output:hdmi-stereo-extra1 # HDMI

