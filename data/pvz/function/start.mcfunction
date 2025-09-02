# create teams
team add yellow
team add aqua
team modify yellow color yellow
team modify aqua color aqua

# scoreboards
scoreboard objectives add health dummy
scoreboard objectives add timer dummy
scoreboard objectives add lane dummy
scoreboard objectives add x dummy
scoreboard objectives add slowness dummy
scoreboard objectives add garlic dummy
scoreboard objectives add const dummy
scoreboard objectives add animationTick dummy
scoreboard objectives add changedByStump dummy
scoreboard objectives add rotation dummy
scoreboard objectives add game dummy
scoreboard players reset * health
scoreboard players reset * timer
scoreboard players reset * lane
scoreboard players reset * x
scoreboard players reset * slowness
scoreboard players reset * garlic
scoreboard players reset * animationTick
scoreboard players reset * changedByStump
scoreboard players reset * rotation
scoreboard players reset * game
scoreboard objectives setdisplay sidebar
scoreboard players set wave game 0
scoreboard players set suns game 50
scoreboard players set roundTick game 0

# constants
function pvz:setters/set_constants

# remove all
function pvz:commands/remove/remove_all

# spawn lawnmowers
function pvz:commands/spawning/spawn_lawnmowers

# setup inventory
clear @p
function pvz:commands/eggs/get_plants

# player head
item replace entity @a armor.head with minecraft:player_head[minecraft:custom_name='{"text":"Crazy Dave","color":"gold","underlined":true,"bold":true,"italic":false}',minecraft:lore=['{"text":"Custom Head ID: 111916","color":"gray","italic":false}','{"text":"www.minecraft-heads.com","color":"blue","italic":false}'],minecraft:profile={id:[I;1938401519,-1106164413,-1720319939,917717108],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2E3Y2Y3NDBjMmZkNDFmYTNhOWQyODFlNTljZWQ2NTM5ZTYxYmQ1MjNlZmJiZGM5MzMwMjhjM2U4MzQ5MWViNCJ9fX0="}]}]

# gamemode
gamemode creative @p

# log
tellraw @a ["",{"text":"\n"},{"text":"---------[ PLANTS VS ZOMBIES ]","color":"white"},{"text":"---------\n"},{"text":"> Datapack loaded succesfully!","color":"light_purple"},{"text":"\n"},{"text":"-------------[ SPAWNING ]","color":"white"},{"text":"--------------\n"},{"text":"[creeper]","color":"green","clickEvent":{"action":"run_command","value":"/function pvz:commands/spawning/spawn_creeper"}},{"text":" ","color":"green"},{"text":"[conehead]","color":"green","clickEvent":{"action":"run_command","value":"/function pvz:commands/spawning/spawn_conehead"}},{"text":" ","color":"green"},{"text":"[buckethead]","color":"green","clickEvent":{"action":"run_command","value":"/function pvz:commands/spawning/spawn_buckethead"}},{"text":"\n"},{"text":"[football]","color":"green","clickEvent":{"action":"run_command","value":"/function pvz:commands/spawning/spawn_football"}},{"text":" ","color":"green"},{"text":"[pole vault]","color":"green","clickEvent":{"action":"run_command","value":"/function pvz:commands/spawning/spawn_polevault"}},{"text":" ","color":"green"},{"text":"[waveflag]","color":"green","clickEvent":{"action":"run_command","value":"/function pvz:commands/spawning/spawn_waveflag"}},{"text":"\n"},{"text":"---------------[ SUNS ]----------------","color":"white"},{"text":"\n"},{"text":"[reset]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set suns game 0"}},{"text":" ","color":"yellow"},{"text":"[+25]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players add suns game 25"}},{"text":" ","color":"yellow"},{"text":"[+100]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players add suns game 100"}},{"text":" ","color":"yellow"},{"text":"[+1000]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players add suns game 1000"}},{"text":" ","color":"yellow"},{"text":"[max]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set suns game 9990"}},{"text":"\n"},{"text":"-------------","color":"white"},{"text":"--"},{"text":"[ WAVES ]","color":"white"},{"text":"--"},{"text":"-------------","color":"white"},{"text":"\n"},{"text":"[start]","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set roundTick game 0"}},{"text":" ","color":"aqua"},{"text":"[1]","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set roundTick game 4580"}},{"text":" ","color":"aqua"},{"text":"[2]","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set roundTick game 7040"}},{"text":" ","color":"aqua"},{"text":"[3]","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set roundTick game 9500"}},{"text":" ","color":"aqua"},{"text":"[end]","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set roundTick game 9810"}},{"text":"\n---------------[ EXTRA ]---------------\n"},{"text":"[kill all]","color":"red","clickEvent":{"action":"run_command","value":"/function pvz:commands/remove/remove_all"}},{"text":" ","color":"red"},{"text":"[kill zombies]","color":"red","clickEvent":{"action":"run_command","value":"/function pvz:commands/remove/remove_zombies"}},{"text":" ","color":"red"},{"text":"[all eggs]","color":"red","clickEvent":{"action":"run_command","value":"/function pvz:commands/eggs/get_all"}},{"text":" ","color":"red"},{"text":"[reset lawnmowers]","color":"red","clickEvent":{"action":"run_command","value":"/function pvz:commands/spawning/spawn_lawnmowers"}},{"text":"\n--------------------------------------\n "}]