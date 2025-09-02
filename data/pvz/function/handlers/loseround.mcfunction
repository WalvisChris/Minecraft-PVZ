# Sequence
execute if score loseRound timer matches 80 at @s run tp @s ~ ~ 3
execute if score loseRound timer matches 1.. if score loseRound timer matches ..60 at @s run tp @s ~-.02 ~ ~

# Camera Tracking
execute if score loseRound timer matches 1.. at @s run tp @p ~2 ~1.7 ~1.1 120 30

# Itterate
execute if score loseRound timer matches 1.. run scoreboard players remove loseRound timer 1

# Reset
execute if score loseRound timer matches 0 run title @a title {"text":"The Zombies ate your brains!","color":"red"}
execute if score loseRound timer matches 0 run tag @s remove lose
execute if score loseRound timer matches 0 run scoreboard players set roundTick game 9810
execute if score loseRound timer matches 0 run function pvz:commands/remove/remove_all
execute if score loseRound timer matches 0 run gamemode creative @p