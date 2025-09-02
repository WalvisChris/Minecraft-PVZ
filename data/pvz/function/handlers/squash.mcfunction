# Collision
execute if entity @s[tag=!isJumping] at @s positioned ~-1 ~1.5 ~ if entity @e[tag=zombie,distance=...5] run summon armor_stand ~1 ~ ~ {Motion:[-0.12d,0.5d,0.0d],Tags:["jump_placeholder"],Invisible:1b}
execute if entity @s[tag=!isJumping] at @s positioned ~-1 ~1.5 ~ if entity @e[tag=zombie,distance=...5] run tag @s add isJumping

execute if entity @s[tag=!isJumping] at @s positioned ~ ~1.5 ~ if entity @e[tag=zombie,distance=...5] run summon armor_stand ~ ~ ~ {Motion:[0.0d,0.5d,0.0d],Tags:["jump_placeholder"],Invisible:1b}
execute if entity @s[tag=!isJumping] at @s positioned ~ ~1.5 ~ if entity @e[tag=zombie,distance=...5] run tag @s add isJumping

execute if entity @s[tag=!isJumping] at @s positioned ~1 ~1.5 ~ if entity @e[tag=zombie,distance=...5] run summon armor_stand ~-1 ~ ~ {Motion:[0.12d,0.5d,0.0d],Tags:["jump_placeholder"],Invisible:1b}
execute if entity @s[tag=!isJumping] at @s positioned ~1 ~1.5 ~ if entity @e[tag=zombie,distance=...5] run tag @s add isJumping

# Jump
execute if entity @s[tag=isJumping] at @s positioned as @e[tag=jump_placeholder,limit=1,sort=nearest] run tp @s ~ ~ ~ 270 0
execute if entity @s[tag=isJumping] at @s if entity @e[tag=jump_placeholder,limit=1,sort=nearest,nbt={OnGround:1b}] run kill @e[tag=zombie,distance=...5]

# End
kill @e[tag=jump_placeholder,nbt={OnGround:1b}]
execute if entity @s[tag=isJumping] at @s unless entity @e[tag=jump_placeholder,distance=...5] run kill @s