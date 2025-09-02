# Sounds
execute if entity @s[scores={garlic=50}] at @p run playsound entity.generic.eat master @p ~ ~ ~ 1 .5
execute if entity @s[scores={garlic=40}] at @p run playsound entity.generic.eat master @p ~ ~ ~ 1 .5
execute if entity @s[scores={garlic=30}] at @p run playsound entity.generic.eat master @p ~ ~ ~ 1 .5
execute if entity @s[scores={garlic=5}] at @p run playsound entity.pillager.ambient master @p ~ ~ ~ 1 .2

# Logic
execute if entity @s[scores={garlic=0}] unless score @s lane matches 4.. at @s run summon armor_stand ~ ~ ~1 {Tags:["random"],Invisible:1b,NoGravity:1b}
execute if entity @s[scores={garlic=0}] unless score @s lane matches ..0 at @s run summon armor_stand ~ ~ ~-1 {Tags:["random"],Invisible:1b,NoGravity:1b}
execute if entity @s[scores={garlic=0}] at @s run scoreboard players operation @e[tag=garlic,limit=1,sort=nearest] health -= damageLow const
execute if entity @s[scores={garlic=0}] at @e[tag=random,limit=1,sort=random] run tp @s ~ ~ ~ 90 0
execute if entity @s[scores={garlic=0}] run kill @e[tag=random]

# Check
scoreboard players reset @s[scores={garlic=0}] garlic

# Itterate
scoreboard players remove @s[scores={garlic=1..}] garlic 1