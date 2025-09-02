# Charge
execute if entity @s[tag=!isCharged] if score @s timer < potatoReload const run scoreboard players add @s timer 1
execute if entity @s[tag=!isCharged] if score @s timer >= potatoReload const at @s run tp @s ~ ~.3 ~
execute if entity @s[tag=!isCharged] if score @s timer >= potatoReload const at @s run tp @e[tag=dot,limit=1,sort=nearest] ~ ~1.2 ~
execute if entity @s[tag=!isCharged] if score @s timer >= potatoReload const at @p run playsound block.grass.step master @p ~ ~ ~ 1 .1
execute if entity @s[tag=!isCharged] if score @s timer >= potatoReload const at @s run item replace entity @e[tag=dot,limit=1,sort=nearest] armor.head with acacia_button
execute if entity @s[tag=!isCharged] if score @s timer >= potatoReload const run tag @s add isCharged
execute if score @s timer >= potatoReload const run scoreboard players reset @s timer

# Collision
execute if entity @s[tag=isCharged] at @s positioned ~ ~1.7 ~ if entity @e[tag=zombie,distance=...5] run tag @s add explode

# Explode
execute if entity @s[tag=explode] at @s run particle gust ~ ~2 ~ .1 .1 .1 5 10
execute if entity @s[tag=explode] at @p run playsound entity.generic.explode master @p ~ ~ ~ 1 .3
execute if entity @e[tag=explode] at @s positioned ~ ~1.7 ~ run kill @e[distance=...5,type=!player]
execute if entity @e[tag=explode] at @s run summon area_effect_cloud ~ ~1.5 ~ {CustomName:'{"text":"SPUDOW!","color":"red","bold":true}',CustomNameVisible:1b,Duration:30}

# End
kill @s[tag=explode]