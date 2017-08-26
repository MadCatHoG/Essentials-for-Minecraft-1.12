##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: Jul 7, 2017
# Last Updated: Aug 22, 2017
# Version: Essentials v1.0
# Minecraft Version 1.12+
# Description:
# Calls all of all the "essentials" pack
# setup functions
##########################################


gamerule commandBlockOutput false
gamerule sendCommandFeedback false

function Essentials-v1:OnePlayerSleep/ops_setup
function Essentials-v1:PlayerHeadDrops/phd_setup
function Essentials-v1:SpeedPaths/paths_setup
function Essentials-v1:EndStuff/endstuff_setup

gamerule gameLoopFunction Essentials-v1:main_loop

tellraw @a ["",{"text":"Essentials v1.0","bold":true,"color":"red"},{"text":" by ","bold":true},{"text":"MadCat","bold":true,"color":"green"},{"text":"\n"},{"text":"One Player Sleep","color":"aqua"},{"text":",","color":"gold"},{"text":" "},{"text":"Enderman Anti-Grief","color":"dark_aqua"},{"text":",","color":"gold"},{"text":" "},{"text":"Ender Dragon Drops","color":"dark_green"},{"text":",","color":"gold"},{"text":"\n"},{"text":"Speed Paths","color":"yellow"},{"text":" "},{"text":"and","color":"gold"},{"text":" "},{"text":"Player Head Drops","color":"light_purple"},{"text":"\n"},{"text":"Successfully Installed","color":"green"},{"text":"\n"},{"text":"For updates go to","color":"gold","clickEvent":{"action":"open_url","value":"https://youtube.com/MadCatHoG"}},{"text":" ","color":"green","clickEvent":{"action":"open_url","value":"https://youtube.com/MadCatHoG"}},{"text":"www.youtube.com/MadCatHoG","bold":true,"color":"green","clickEvent":{"action":"open_url","value":"https://youtube.com/MadCatHoG"}}]


