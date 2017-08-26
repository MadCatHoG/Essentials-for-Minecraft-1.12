##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: Jul 7, 2017
# Version: Essentials v1.0
# Minecraft Version 1.12+
# Description:
# Installs Player Head Drop Function
##########################################

#scoreboard teams join players @a[team=]
scoreboard objectives add PHDkill stat.playerKills
scoreboard objectives add PHDdeath stat.deaths
advancement grant @a only Essentials-v1:PlayerHeadDrops
