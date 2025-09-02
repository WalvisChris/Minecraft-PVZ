# Move Poles
execute if entity @s[tag=hasPole,tag=!jump] at @s positioned ~ ~-.3 ~-.4 run tp @e[tag=pole1,limit=1,sort=nearest] ~-1.2 ~ ~
execute if entity @s[tag=hasPole,tag=!jump] at @s positioned ~ ~-.3 ~-.4 run tp @e[tag=pole2,limit=1,sort=nearest] ~-.6 ~ ~
execute if entity @s[tag=hasPole,tag=!jump] at @s positioned ~ ~-.3 ~-.4 run tp @e[tag=pole3,limit=1,sort=nearest] ~ ~ ~
execute if entity @s[tag=hasPole,tag=!jump] at @s positioned ~ ~-.3 ~-.4 run tp @e[tag=pole4,limit=1,sort=nearest] ~.6 ~ ~
execute if entity @s[tag=hasPole,tag=!jump] at @s positioned ~ ~-.3 ~-.4 run tp @e[tag=pole5,limit=1,sort=nearest] ~1.2 ~ ~

# Pole Vaulting Zombie
execute if entity @s[tag=hasPole,tag=!jump] at @s positioned ~ ~ ~ if entity @e[tag=plant,distance=...5] run tag @s add jump
execute if entity @s[tag=hasPole,tag=!jump] at @s positioned ~ ~-1.5 ~ if entity @e[tag=plant,distance=...5] run tag @s add jump

execute if entity @s[tag=hasPole,tag=jump] at @s positioned ~ ~-.3 ~-.4 as @e[tag=poles,limit=5,sort=nearest] run data merge entity @s {Pose:{LeftArm:[270f,36f,0f],RightArm:[270f,24f,180f]}}
execute if entity @s[tag=hasPole,tag=jump] at @s unless entity @e[tag=jump_placeholder,distance=..1] positioned ~ ~-.3 ~-.4 run tp @e[tag=pole1,limit=1,sort=nearest] ~ ~1.6 ~
execute if entity @s[tag=hasPole,tag=jump] at @s unless entity @e[tag=jump_placeholder,distance=..1] positioned ~ ~-.3 ~-.4 run tp @e[tag=pole2,limit=1,sort=nearest] ~ ~1 ~
execute if entity @s[tag=hasPole,tag=jump] at @s unless entity @e[tag=jump_placeholder,distance=..1] positioned ~ ~-.3 ~-.4 run tp @e[tag=pole3,limit=1,sort=nearest] ~ ~.4 ~
execute if entity @s[tag=hasPole,tag=jump] at @s unless entity @e[tag=jump_placeholder,distance=..1] positioned ~ ~-.3 ~-.4 run tp @e[tag=pole4,limit=1,sort=nearest] ~ ~-.2 ~
execute if entity @s[tag=hasPole,tag=jump] at @s unless entity @e[tag=jump_placeholder,distance=..1] positioned ~ ~-.3 ~-.4 run tp @e[tag=pole5,limit=1,sort=nearest] ~ ~-.8 ~
execute if entity @s[tag=hasPole,tag=jump] at @s unless entity @e[tag=jump_placeholder,distance=..1] run summon armor_stand ~ ~ ~ {Motion:[-0.13d,0.5d,0.0d],Tags:["jump_placeholder"],Invisible:1b}

execute if entity @s[tag=hasPole,tag=jump] at @s positioned as @e[tag=jump_placeholder,limit=1,sort=nearest] if entity @e[tag=jump_placeholder,distance=...5] run tp @s ~ ~ ~ 90 0
execute if entity @s[tag=hasPole,tag=jump] at @s if entity @e[tag=jump_placeholder,distance=...5,nbt={OnGround:1b}] run tag @s remove hasPole
execute if entity @s[tag=!hasPole,tag=jump] at @s run kill @e[tag=jump_placeholder,distance=...5,nbt={OnGround:1b}]
execute if entity @s[tag=!hasPole,tag=jump] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole1,limit=1,sort=nearest]
execute if entity @s[tag=!hasPole,tag=jump] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole2,limit=1,sort=nearest]
execute if entity @s[tag=!hasPole,tag=jump] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole3,limit=1,sort=nearest]
execute if entity @s[tag=!hasPole,tag=jump] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole4,limit=1,sort=nearest]
execute if entity @s[tag=!hasPole,tag=jump] at @s positioned ~1 ~.1 ~-.4 run kill @e[tag=pole5,limit=1,sort=nearest]
execute if entity @s[tag=!hasPole,tag=jump] at @s unless entity @e[tag=jump_placeholder,distance=...5,nbt={OnGround:1b}] run tag @s remove jump

# Skip the rest for hasPole
execute if entity @s[tag=hasPole] run return fail

# Check hitboxes for plants
execute if entity @s[tag=!isEating] at @s positioned ~ ~ ~ if entity @e[tag=plant,tag=isEatable,distance=...5] run tag @s add isEating
execute if entity @s[tag=!isEating] at @s positioned ~ ~-1.5 ~ if entity @e[tag=plant,tag=isEatable,distance=...5] run tag @s add isEating

# Zombie attack
execute if entity @s[tag=isEating] unless score @s timer >= zombieReload const run scoreboard players add @s timer 1
execute if entity @s[tag=isEating] if score @s timer >= zombieReload const at @s positioned ~-.3 ~-.5 ~ run scoreboard players operation @e[tag=plant,tag=isEatable,limit=1,sort=nearest] health -= damageLow const
execute if entity @s[tag=isEating] if score @s timer >= zombieReload const at @p run playsound entity.generic.eat master @p ~ ~ ~ 1 .1
execute if entity @s[tag=isEating] if score @s timer >= zombieReload const run scoreboard players reset @s timer

# Check done eating or continue eating
execute if entity @s[tag=isEating,tag=flag] run tag @s remove flag
execute if entity @s[tag=isEating] at @s positioned ~ ~ ~ if entity @e[tag=plant,tag=isEatable,distance=...5] run tag @s add flag
execute if entity @s[tag=isEating] at @s positioned ~ ~-1.5 ~ if entity @e[tag=plant,tag=isEatable,distance=...5] run tag @s add flag
execute if entity @s[tag=isEating,tag=!flag] run tag @s remove isEating

# Heads
execute as @e[tag=conehead,scores={health=..10}] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:leather_helmet"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,components:{custom_name:'{"text":"Zombie","color":"gold","underlined":true,"bold":true,"italic":false}',lore:['{"text":"Custom Head ID: 109427","color":"gray","italic":false}','{"text":"www.minecraft-heads.com","color":"blue","italic":false}'],profile:{id:[I;-2118237292,945113479,-1883779321,-1506869887],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQzYzBmNzc0OTUzODM0MWI3NmFiMjFmNTk2ZjkwYTljOWRjNjA4YTJlYTU2ZmE1M2IzMjliYmIyZDBkZmZhNSJ9fX0="}]}}}]}
execute as @e[tag=buckethead,scores={health=..10}] if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_helmet"}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,components:{custom_name:'{"text":"Zombie","color":"gold","underlined":true,"bold":true,"italic":false}',lore:['{"text":"Custom Head ID: 109427","color":"gray","italic":false}','{"text":"www.minecraft-heads.com","color":"blue","italic":false}'],profile:{id:[I;-2118237292,945113479,-1883779321,-1506869887],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQzYzBmNzc0OTUzODM0MWI3NmFiMjFmNTk2ZjkwYTljOWRjNjA4YTJlYTU2ZmE1M2IzMjliYmIyZDBkZmZhNSJ9fX0="}]}}}]}
execute as @e[tag=football,scores={health=..10}] if entity @s[nbt={ArmorItems:[{},{},{},{components:{"minecraft:profile":{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg5ZmExM2I3MDg5ZTZhYzJmNzg1ZmE0OGRiZmMwOWRlNTcxMjU5NGMyMzY1YmRjNmUxM2MxZjk0NGNhNDQ0ZSJ9fX0="}]}}}]}] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",Count:1,components:{"minecraft:trim":{pattern:"ward",material:"quartz"},"minecraft:dyed_color":11546150}},{id:"minecraft:leather_leggings",Count:1,components:{"minecraft:trim":{pattern:"eye",material:"quartz"},"minecraft:dyed_color":11546150}},{id:"minecraft:leather_chestplate",Count:1,components:{"minecraft:trim":{pattern:"bolt",material:"quartz"},"minecraft:dyed_color":11546150}},{id:"minecraft:player_head",Count:1,components:{custom_name:'{"text":"Zombie","color":"gold","underlined":true,"bold":true,"italic":false}',lore:['{"text":"Custom Head ID: 109427","color":"gray","italic":false}','{"text":"www.minecraft-heads.com","color":"blue","italic":false}'],profile:{id:[I;-2118237292,945113479,-1883779321,-1506869887],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQzYzBmNzc0OTUzODM0MWI3NmFiMjFmNTk2ZjkwYTljOWRjNjA4YTJlYTU2ZmE1M2IzMjliYmIyZDBkZmZhNSJ9fX0="}]}}}]}