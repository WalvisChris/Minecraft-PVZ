# Collision
execute if entity @s[tag=!drive] at @s positioned ~ ~1.5 ~ if entity @e[tag=zombie,distance=...5] run tag @s add drive

# Driving
execute if entity @s[tag=drive] if score @s x matches 1 at @p run playsound minecraft:entity.minecart.riding master @p ~ ~ ~ 2 .9
execute if entity @s[tag=drive] at @s positioned ~ ~1.5 ~ if entity @e[tag=zombie,distance=...5] run playsound minecraft:entity.generic.explode master @p ~ ~ ~ .5 .3
execute if entity @s[tag=drive] at @s positioned ~ ~1.5 ~ if entity @e[tag=zombie,distance=...5] run kill @e[tag=zombie,distance=...5]