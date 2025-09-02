# snow to regular
execute at @s positioned ~ ~1.5 ~ if entity @e[tag=snowBullet,distance=...1] unless score @s x = @e[tag=snowBullet,distance=...1,limit=1,sort=nearest] changedByStump run data merge entity @e[tag=snowBullet,distance=...1,limit=1,sort=nearest] {HandItems:[{id:"slime_ball",Count:1},{}],Tags:["bullet","snowBullet","regularBullet"]}
execute at @s positioned ~ ~1.5 ~ if entity @e[tag=snowBullet,distance=...1] unless score @s x = @e[tag=snowBullet,distance=...1,limit=1,sort=nearest] changedByStump run scoreboard players operation @e[tag=snowBullet,distance=...1,limit=1,sort=nearest] changedByStump = @s x
execute as @e[tag=snowBullet,tag=regularBullet] run tag @s remove snowBullet

# regular to fire
execute at @s positioned ~ ~1.5 ~ if entity @e[tag=regularBullet,distance=...1] unless score @s x = @e[tag=regularBullet,distance=...1,limit=1,sort=nearest] changedByStump run data merge entity @e[tag=regularBullet,distance=...1,limit=1,sort=nearest] {HandItems:[{id:"fire_charge",Count:1},{}],Tags:["bullet","regularBullet","fireBullet"]}
execute at @s positioned ~ ~1.5 ~ if entity @e[tag=regularBullet,distance=...1] unless score @s x = @e[tag=regularBullet,distance=...1,limit=1,sort=nearest] changedByStump run scoreboard players operation @e[tag=regularBullet,distance=...1,limit=1,sort=nearest] changedByStump = @s x
execute as @e[tag=regularBullet,tag=fireBullet] run tag @s remove regularBullet