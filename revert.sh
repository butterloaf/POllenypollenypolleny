#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo)"
    exit
fi

echo "+##############################################+"
echo "# Welcome To Pollen (v1)!                      #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Credit:                                      #"
echo "# Pollen Developer - Scaratek                  #"
echo "# Logo Designer - Nitelite                     #"
echo "# Found the Overlook - Rafflesia               #"
echo "# Made the Original Script - OlyB              #"
echo "# Fixed a tiny little bug - r58Playz           #"
echo "# Custimised by Fruvs for Fruvs                #"
echo "+##############################################+"
echo "Contributor - 5less-chromosones"
echo "May Ultrablue Rest In Peace o7"

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
echo '{"DeveloperToolsAvailability": 1, "AllowDinosaurEasterEgg": true, "IncognitoModeAvailability": 0 }' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
echo "Pollen has been Configured By Fruvs!"
echo "Pollen has been successfully applied!"
