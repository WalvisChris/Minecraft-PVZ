# Check for zombie on lane
execute as @s[tag=!fume] run function pvz:getters/get_zombie_on_lane

# FUME check target
execute if entity @s[tag=fume] at @s positioned ~ ~1.5 ~ if entity @e[tag=zombie,distance=..2] run tag @s add hasTarget
execute if entity @s[tag=hasTarget,tag=fume] at @s positioned ~ ~1.5 ~ unless entity @e[tag=zombie,distance=..2] run tag @s remove hasTarget

# Increment Timers
execute if entity @s[tag=hasTarget] unless score @s timer >= shooterReload const run scoreboard players add @s timer 1

# Spawning Bullets
execute if entity @s[tag=peashooter] if score @s timer >= shooterReload const at @s run summon armor_stand ~ ~ ~ {Tags:["bullet","regularBullet"],ShowArms:1b,Small:1b,NoGravity:1b,Invisible:1b,HandItems:[{id:"slime_ball",Count:1},{}],Pose:{RightArm:[0f,270f,250f]},Rotation:[90f,0f]}

execute if entity @s[tag=snowpea] if score @s timer >= shooterReload const at @s run summon armor_stand ~ ~ ~ {Tags:["bullet","snowBullet"],ShowArms:1b,Small:1b,NoGravity:1b,Invisible:1b,HandItems:[{id:"heart_of_the_sea",Count:1},{}],Pose:{RightArm:[0f,270f,250f]},Rotation:[90f,0f]}

execute if entity @s[tag=repeater] if score @s timer >= shooterReload const at @s run summon armor_stand ~ ~ ~ {Tags:["bullet","regularBullet"],ShowArms:1b,Small:1b,NoGravity:1b,Invisible:1b,HandItems:[{id:"slime_ball",Count:1},{}],Pose:{RightArm:[0f,270f,250f]},Rotation:[90f,0f]}
execute if entity @s[tag=repeater] if score @s timer >= shooterReload const at @s run summon armor_stand ~-.5 ~ ~ {Tags:["bullet","regularBullet"],ShowArms:1b,Small:1b,NoGravity:1b,Invisible:1b,HandItems:[{id:"slime_ball",Count:1},{}],Pose:{RightArm:[0f,270f,250f]},Rotation:[90f,0f]}

execute if entity @s[tag=threepeater] if score @s timer >= shooterReload const at @s run summon armor_stand ~ ~ ~-1 {Tags:["bullet","regularBullet"],ShowArms:1b,Small:1b,NoGravity:1b,Invisible:1b,HandItems:[{id:"slime_ball",Count:1},{}],Pose:{RightArm:[0f,270f,250f]},Rotation:[90f,0f]}
execute if entity @s[tag=threepeater] if score @s timer >= shooterReload const at @s run summon armor_stand ~ ~ ~ {Tags:["bullet","regularBullet"],ShowArms:1b,Small:1b,NoGravity:1b,Invisible:1b,HandItems:[{id:"slime_ball",Count:1},{}],Pose:{RightArm:[0f,270f,250f]},Rotation:[90f,0f]}
execute if entity @s[tag=threepeater] if score @s timer >= shooterReload const at @s run summon armor_stand ~ ~ ~1 {Tags:["bullet","regularBullet"],ShowArms:1b,Small:1b,NoGravity:1b,Invisible:1b,HandItems:[{id:"slime_ball",Count:1},{}],Pose:{RightArm:[0f,270f,250f]},Rotation:[90f,0f]}

execute if entity @s[tag=fume] if score @s timer >= shooterReload const at @s run particle bubble_pop ~ ~2 ~ .5 0 .5 0 100
execute if entity @s[tag=fume] if score @s timer >= shooterReload const at @p run playsound block.bubble_column.upwards_ambient master @p ~ ~ ~ 1 2
execute if entity @s[tag=fume] if score @s timer >= shooterReload const at @s positioned ~ ~1.5 ~ run scoreboard players operation @e[tag=zombie,distance=..2] health -= damageLow const

# Reset Timers
execute if score @s timer >= shooterReload const run scoreboard players reset @s timer