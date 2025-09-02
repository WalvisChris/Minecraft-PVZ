# add stem
execute if entity @s[tag=isPotted] at @s run setblock ~ ~ ~ potted_cactus

# threepeater heads
execute if entity @s[tag=threepeater] at @s run summon minecraft:armor_stand ~ ~ ~-.4 {Tags:["plant","head_left"],Small:1b,Invisible:1b,Rotation:[250f,0f],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-942704133,-102413302,-1811957878,916249555],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTIzODA0YTIwOTkzMzc1ODdkOGE4MWUxZGQ0YzFlMzZiMGRhNGRjNGZmZjdkZjA4NmRhNDZkOTRjNzIyYjhkNyJ9fX0="}]}}}]}
execute if entity @s[tag=threepeater] at @s run summon minecraft:armor_stand ~ ~ ~.4 {Tags:["plant","head_right"],Small:1b,Invisible:1b,Rotation:[290f,0f],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-942704133,-102413302,-1811957878,916249555],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTIzODA0YTIwOTkzMzc1ODdkOGE4MWUxZGQ0YzFlMzZiMGRhNGRjNGZmZjdkZjA4NmRhNDZkOTRjNzIyYjhkNyJ9fX0="}]}}}]}

# sunflower highlight
execute if entity @s[tag=sunflower] run team join yellow @s

# health
execute if entity @s[tag=isEatable,tag=!wallnut,tag=!garlic] run scoreboard players set @s health 6
execute if entity @s[tag=wallnut] run scoreboard players set @s health 88
execute if entity @s[tag=garlic] run scoreboard players set @s health 21

# down 2.0
execute if entity @s[tag=potato] at @s run tp @s ~ ~-2 ~
execute if entity @s[tag=potato] run scoreboard players set @s timer 0

# down 0.8
execute if entity @s[tag=garlic] at @s run tp @s ~ ~-.8 ~

# down 1.5
execute if entity @s[tag=fume] at @s run tp @s ~ ~-1.5 ~
execute if entity @s[tag=stump] at @s run tp @s ~ ~-1.5 ~
execute if entity @s[tag=wallnut] at @s run tp @s ~ ~-1.5 ~
execute if entity @s[tag=squash] at @s run tp @s ~ ~-1.5 ~
execute if entity @s[tag=lawnmower] at @s run tp @s ~ ~-1.5 ~

# spikeweed
execute if entity @s[tag=spikeweed] at @s run tp @s ~ ~-1.95 ~
execute if entity @s[tag=spikeweed] at @s run summon minecraft:armor_stand ~ ~.3 ~-0.75 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["plant","spikeweed","spikes"],ArmorItems:[{},{},{},{id:"frogspawn",Count:1}],Pose:{Head:[90f,0f,0f]}}

# potato dot
execute if entity @s[tag=potato] at @s run summon armor_stand ~ ~1.2 ~ {Small:1b,NoGravity:1b,Invisible:1b,Tags:["dot"],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}

# stump store x
execute if entity @s[tag=stump] run function pvz:setters/set_x

# end
tag @s remove plant_init