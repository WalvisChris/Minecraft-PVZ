# Collision
execute at @s positioned ~-1.5 ~ ~ if entity @e[tag=zombie,distance=...3] run tag @s add hit

# Deal Damage
execute if entity @s[tag=hit,tag=!fireBullet] at @s positioned ~-1.5 ~ ~ run scoreboard players operation @e[tag=zombie,distance=...3,limit=1,sort=nearest] health -= damageLow const
execute if entity @s[tag=hit,tag=fireBullet] at @s positioned ~-1.5 ~ ~ run scoreboard players operation @e[tag=zombie,distance=...3,limit=1,sort=nearest] health -= damageMid const
execute if entity @s[tag=hit,tag=snowBullet] at @s positioned ~-1.5 ~ ~ run scoreboard players operation @e[tag=zombie,distance=...3,limit=1,sort=nearest] slowness = slownessDuration const

# Sound
execute as @p at @s if entity @e[tag=hit] run playsound entity.bee.sting master @s ~ ~ ~ 1 2

# End
kill @s[tag=hit]