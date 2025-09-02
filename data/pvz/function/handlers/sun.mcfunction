# Rotation
execute unless score @s rotation matches 360.. run scoreboard players add @s rotation 2
scoreboard players reset @s[scores={rotation=360..}] rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s rotation

# Pickup
execute at @s if entity @p[distance=..2] run scoreboard players add suns game 25
execute if score suns game matches 9990.. run scoreboard players set suns game 9990
execute at @s if entity @p[distance=..2] run scoreboard players reset @s timer
execute at @s if entity @p[distance=..2] run tellraw @a ["",{"text":"+25 suns (","color":"yellow"},{"score":{"name":"suns","objective":"game"},"color":"yellow"},{"text":")","color":"yellow"}]
execute at @s if entity @p[distance=..2] run playsound entity.experience_orb.pickup master @p ~ ~ ~ 1 2
execute at @s if entity @p[distance=..2] run kill @s

# Despawn
execute unless score @s timer matches 200.. run scoreboard players add @s timer 1
kill @s[scores={timer=200..}]