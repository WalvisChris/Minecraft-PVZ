# Collision
execute if entity @s[tag=!isChomping] at @s positioned ~1 ~ ~ if entity @e[tag=zombie,distance=...5] run tag @s add isChomping

# Kill zombie
execute if entity @s[tag=isChomping] at @s positioned ~1 ~ ~ unless score @s timer matches 0.. run kill @e[tag=zombie,distance=...5]

# Cooldown
execute if entity @s[tag=isChomping] unless score @s timer matches 0.. run scoreboard players operation @s timer = chomperReload const
tag @s[tag=isChomping,scores={timer=..0}] remove isChomping
scoreboard players reset @s[scores={timer=..0}] timer

# Itterate
execute if entity @s[tag=isChomping] unless score @s timer matches ..0 run scoreboard players remove @s timer 1