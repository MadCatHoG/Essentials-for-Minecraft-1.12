##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: Jul 7, 2017
# Last Update: Aug 22, 2017
# Version: Essentials v1.0
# Minecraft Version 1.12+
# Description:
# Main Loop for the "essentials" pack
##########################################

####################################
# End Stuff

#Elytra and Egg Drop from Ender Dragon
entitydata @e[type=ender_dragon,tag=!hasDrops] {ArmorDropChances:[1.1f,1.1f,1.1f,1.1f],ArmorItems:[{},{},{id:elytra,Count:1},{id:dragon_egg,Count:1}],Tags:["hasDrops"]}

#Enderman Anti-Grief
entitydata @e[type=Enderman,tag=!a] {carried:"minecraft:piston_extension",Tags:["a"]}

#Shulker Shells
#entitydata @e[type=Shulker,tag=!Shells] {HandItems:[{id:shulker_shell,Count:1},{}],HandDropChances:[0.15F,1.0F],Tags:["Shells"]}

####################################
# Speed Paths
execute @e[type=Player] ~ ~ ~ detect ~ ~ ~ grass_path 0 effect @s speed 1 1
execute @e[type=Horse] ~ ~ ~ detect ~ ~ ~ grass_path 0 effect @s speed 1 3
execute @e[type=Mule] ~ ~ ~ detect ~ ~ ~ grass_path 0 effect @s speed 1 3
execute @e[type=Donkey] ~ ~ ~ detect ~ ~ ~ grass_path 0 effect @s speed 1 4

####################################
# One Player Sleep

scoreboard players tag @a add isSleeping {Sleeping:1b} 
execute @a[tag=isSleeping] ~ ~ ~ scoreboard players enable @a OPSkickBed 
scoreboard players add @e[tag=isSleeping] OPSsleep 1

execute @e[tag=isSleeping,score_OPSsleep=1] ~ ~ ~ tellraw @a ["",{"selector":"@s"},{"text":" has fallen asleep on the job","color":"blue","clickEvent":{"action":"run_command","value":"/trigger OPSkickBed set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to kick!","color":"aqua"}]}}}]

execute @a[score_OPSsleep_min=110] ~ ~ ~ time add 30
execute @a[score_OPSsleep_min=300,score_OPSsleep=301] ~ ~ ~ weather thunder 1

function Essentials-v1:OnePlayerSleep/OPS_kicked if @a[score_OPSkickBed_min=1]

scoreboard players tag @a[tag=isSleeping] remove isSleeping {Sleeping:0b}
scoreboard players set @a[tag=!isSleeping,score_OPSsleep_min=1] OPSsleep 0

###########################################################
# Copy the following execute command for new people and replace PlayerIGN for the 
# player whose head you want dropped on kill. Save this file and do a /reload in game.

execute @a[name=PlayerIGN,score_PHDdeath_min=1] ~ ~ ~ give @a[score_PHDkill_min=1] skull 1 3 {SkullOwner:"PlayerIGN",display:{LocName:"PlayerIGN Head"}}

########################################################
scoreboard players set @a[score_PHDdeath_min=1] PHDdeath 0
scoreboard players set @a[score_PHDkill_min=1] PHDkill 0
########################################################

#Add any other functions after this. ######################

#If Xisuma's "Even More Mob Heads" present, remove #
#function mobs:variants


