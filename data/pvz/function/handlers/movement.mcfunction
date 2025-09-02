# set x
function pvz:setters/set_x

# move zombies
execute if entity @s[tag=zombie,tag=!isEating,tag=!football,tag=!hasPole] if score @s x matches -1.. unless score @s slowness matches 1.. unless score @s garlic matches 0.. at @s run teleport @s ~-.01 ~ ~
execute if entity @s[tag=zombie,tag=!isEating,tag=football] if score @s x matches -1.. unless score @s slowness matches 1.. unless score @s garlic matches 0.. at @s run teleport @s ~-.02 ~ ~
execute if entity @s[tag=zombie,tag=!isEating,tag=hasPole] if score @s x matches -1.. unless score @s slowness matches 1.. unless score @s garlic matches 0.. at @s run teleport @s ~-.02 ~ ~

# move slowed zombies
execute if entity @s[tag=zombie,tag=!isEating,tag=!football,tag=!hasPole,scores={slowness=1..}] if score @s x matches -1.. unless score @s garlic matches 0.. at @s run teleport @s ~-.005 ~ ~
execute if entity @s[tag=zombie,tag=!isEatable,tag=football,scores={slowness=1..}] if score @s x matches -1.. unless score @s garlic matches 0.. at @s run teleport @s ~-.01 ~ ~
execute if entity @s[tag=zombie,tag=!isEatable,tag=hasPole,scores={slowness=1..}] if score @s x matches -1.. unless score @s garlic matches 0.. at @s run teleport @s ~-.01 ~ ~

# move bullets
execute if entity @s[tag=bullet] if score @s x matches ..10 at @s run teleport @s ~.5 ~ ~
execute if entity @s[tag=bullet] if score @s x matches 11.. run kill @s
execute if entity @s[tag=bullet] if score @s lane matches ..-1 at @s run teleport @s ~ ~ ~1
execute if entity @s[tag=bullet] if score @s lane matches 5.. at @s run teleport @s ~ ~ ~-1

# move lawnmowers
execute if entity @s[tag=lawnmower,tag=drive] if score @s x matches ..9 at @s run teleport @s ~.3 ~ ~
execute if entity @s[tag=lawnmower] if score @s x matches 10.. run kill @s

# lose
execute if entity @s[tag=zombie,scores={x=..-2},tag=!lose] run gamemode spectator @p
execute if entity @s[tag=zombie,scores={x=..-2},tag=!lose] run scoreboard players set loseRound timer 100
execute if entity @s[tag=zombie,scores={x=..-2},tag=!lose] run tag @s add lose
execute if entity @s[tag=lose] if score loseRound timer matches 100 run function pvz:commands/remove/remove_all
execute if entity @s[tag=lose] run function pvz:handlers/loseround