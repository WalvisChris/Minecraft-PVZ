# Collision
execute at @s positioned ~ ~1.95 ~ if entity @e[tag=zombie,distance=...6] unless score @s timer >= shooterReload const run scoreboard players add @s timer 1
execute if entity @s[scores={timer=0..}] at @s positioned ~ ~1.95 ~ unless entity @e[tag=zombie,distance=...6] run scoreboard players reset @s timer

# Damage
execute if score @s timer >= shooterReload const at @s positioned ~ ~1.95 ~ run scoreboard players operation @e[tag=zombie,distance=...6] health -= damageLow const

# Move up
execute if score @s timer >= shooterReload const at @s run tp @s ~ ~.1 ~
execute if score @s timer >= shooterReload const at @s positioned ~ ~.3 ~-0.75 run tp @e[tag=spikes,limit=1,sort=nearest] ~ ~ ~

# Move Down
execute if score @s timer >= shooterReload const run tag @s add retract
execute if entity @s[tag=retract] unless score @s animationTick >= spikeweedFrames const run scoreboard players add @s animationTick 1

execute if entity @s[tag=retract] if score @s animationTick >= spikeweedFrames const at @s run tp @s ~ ~-.1 ~
execute if entity @s[tag=retract] if score @s animationTick >= spikeweedFrames const at @s positioned ~ ~.3 ~-0.75 run tp @e[tag=spikes,limit=1,sort=nearest] ~ ~ ~

execute if entity @s[tag=retract] if score @s animationTick >= spikeweedFrames const run tag @s remove retract
execute if score @s animationTick >= spikeweedFrames const run scoreboard players reset @s animationTick

# Reset timer
execute if score @s timer >= shooterReload const run scoreboard players reset @s timer