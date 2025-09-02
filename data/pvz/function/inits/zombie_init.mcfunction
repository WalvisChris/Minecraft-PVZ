# health
execute if entity @s[tag=creeper] run scoreboard players set @s health 10
execute if entity @s[tag=waveflag] run scoreboard players set @s health 10
execute if entity @s[tag=pole] run scoreboard players set @s health 17
execute if entity @s[tag=conehead] run scoreboard players set @s health 28
execute if entity @s[tag=buckethead] run scoreboard players set @s health 65
execute if entity @s[tag=football] run scoreboard players set @s health 80

# Pole Vaulting Zombie
execute if entity @s[tag=pole] at @s run summon armor_stand ~-1.2 ~-.3 ~-.4 {Rotation:[90f,0f],Pose:{LeftArm:[180f,0f,324f],RightArm:[180f,180f,24f]},HandItems:[{id:"end_rod",Count:1b},{id:"end_rod",Count:1b}],Invisible:1b,ShowArms:1b,NoGravity:1b,Tags:["poles","pole1"]}
execute if entity @s[tag=pole] at @s run summon armor_stand ~-.6 ~-.3 ~-.4 {Rotation:[90f,0f],Pose:{LeftArm:[180f,0f,324f],RightArm:[180f,180f,24f]},HandItems:[{id:"end_rod",Count:1b},{id:"end_rod",Count:1b}],Invisible:1b,ShowArms:1b,NoGravity:1b,Tags:["poles","pole2"]}
execute if entity @s[tag=pole] at @s run summon armor_stand ~ ~-.3 ~-.4 {Rotation:[90f,0f],Pose:{LeftArm:[180f,0f,324f],RightArm:[180f,180f,24f]},HandItems:[{id:"end_rod",Count:1b},{id:"end_rod",Count:1b}],Invisible:1b,ShowArms:1b,NoGravity:1b,Tags:["poles","pole3"]}
execute if entity @s[tag=pole] at @s run summon armor_stand ~.6 ~-.3 ~-.4 {Rotation:[90f,0f],Pose:{LeftArm:[180f,0f,324f],RightArm:[180f,180f,24f]},HandItems:[{id:"end_rod",Count:1b},{id:"end_rod",Count:1b}],Invisible:1b,ShowArms:1b,NoGravity:1b,Tags:["poles","pole4"]}
execute if entity @s[tag=pole] at @s run summon armor_stand ~1.2 ~-.3 ~-.4 {Rotation:[90f,0f],Pose:{LeftArm:[180f,0f,324f],RightArm:[180f,180f,24f]},HandItems:[{id:"end_rod",Count:1b},{id:"end_rod",Count:1b}],Invisible:1b,ShowArms:1b,NoGravity:1b,Tags:["poles","pole5"]}

# freeze highlight
team join aqua @s

# end
tag @s remove zombie_init