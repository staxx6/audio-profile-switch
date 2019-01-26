#!/bin/bash

curr_profile=$(pacmd info | egrep device.profile.name | cut -d '"' -f 2)

if [ curr_profile = "analog-stereo" ]
then
    pacmd set-card-profile 0 output:hdmi-stereo-extra1
else
    pacmd set-card-profile 0 output:analog-stereo
fi        

#pacmd info | egrep device.profile.name # get current profile
#pacmd set-card-profile 0 output:analog-stereo # LAPTOP
#pacmd set-card-profile 0 output:hdmi-stereo-extra1 # HDMI

