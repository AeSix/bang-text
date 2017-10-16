#!/bin/bash
# -------------------------------- About
# This script will download the latest build of the Nukkit-GT branch of Nukkit, from the Potestas community CI.
# A special Thank You goes to SupremeMortal and Creeperface01 - without whom we would not have Nukkit for Minecraft 1.2
# -------------------------------- Instructions
# Simply put this script in your Nukkit operational directory, name it "nukkit-update.sh" and run: chmod +x update.sh
# You will then be able to call ./update.sh to rotate and update Nukkit.
# -------------------------------- License
# MIT License:
# Copyright 2017 Jeremy Denslinger (aka AeSix, AeSix_Reficul, AeSix Reficul)
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# https://opensource.org/licenses/MIT
# -------------------------------- Config
# Just roll with it... Extensions are broken off for convience and reusability.
SERVERNAME="nukkit-server"
CURRENTSRV=".jar"
PREVIOUSRV=".jar.old"
LATESTVERS="nukkit-1.0-SNAPSHOT.jar"
FULLTARGET="https://ci.potestas.xyz/job/Nukkit-GT1.2/lastStableBuild/artifact/target/"

#DELETES THE PREVIOUS BUILD (aka backup of old version)
rm $SERVERNAME$PREVIOUSRV

#Moves "current" to "previous"
mv $SERVERNAME$CURRENTSRV $SERVERNAME$PREVIOUSRV

# download Nukkit-GT: (-O option left out for convience of modifying script later, if needed)
wget $FULLTARGET$LATESTVERS

#rename latest download to current server name
mv $LATESTVERS $SERVERNAME$CURRENTSRV

#a little message to let you know it's done.
echo $SERVERNAME update and version rotation complete!

# This will allow you see the above message, and dismiss it. It will timeout at 10 seconds (-t 10)
read -n 1 -t 10 -s -r -p "Press any key to continue"

clear # This clears the screen, visual cleanup.
ls # lists the current directory, so you can see your shiny new Nukkit!
EOF
