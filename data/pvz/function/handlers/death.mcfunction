# Remove stem
execute if entity @s[tag=isPotted] at @s if block ~ ~ ~ potted_cactus run setblock ~ ~ ~ air

# Remove poles
execute if entity @s[tag=hasPole] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole1,limit=1,sort=nearest]
execute if entity @s[tag=hasPole] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole2,limit=1,sort=nearest]
execute if entity @s[tag=hasPole] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole3,limit=1,sort=nearest]
execute if entity @s[tag=hasPole] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole4,limit=1,sort=nearest]
execute if entity @s[tag=hasPole] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole5,limit=1,sort=nearest]

# Kill
kill @s