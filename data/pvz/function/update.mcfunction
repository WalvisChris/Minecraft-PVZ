# Initializers
execute as @e[tag=buy_init] run function pvz:inits/buy_init
execute as @e[tag=plant_init] run function pvz:inits/plant_init
execute as @e[tag=zombie_init] run function pvz:inits/zombie_init

# Handle Movement
execute as @e[tag=zombie] run function pvz:handlers/movement
execute as @e[tag=bullet] run function pvz:handlers/movement
execute as @e[tag=lawnmower,tag=drive] run function pvz:handlers/movement

# Store Lanes
execute as @e[tag=zombie] run function pvz:setters/set_lane
execute as @e[tag=plant,tag=!head_left,tag=!head_right] run function pvz:setters/set_lane
execute as @e[tag=bullet] run function pvz:setters/set_lane

# Handle Shooters
execute as @e[tag=peashooter] run function pvz:handlers/shooters
execute as @e[tag=snowpea] run function pvz:handlers/shooters
execute as @e[tag=repeater] run function pvz:handlers/shooters
execute as @e[tag=threepeater] run function pvz:handlers/shooters
execute as @e[tag=fume] run function pvz:handlers/shooters

# Handle Bullets
execute as @e[tag=bullet] run function pvz:handlers/bullets

# Handle Slowness
execute as @e[scores={slowness=1..}] run function pvz:handlers/slowness

# Handle Zombies
execute as @e[tag=zombie] run function pvz:handlers/zombies

# Health Check
execute as @e[scores={health=..0}] run function pvz:handlers/death

# Handle Sunflowers
execute as @e[tag=sunflower] run function pvz:handlers/sunflower

# Handle Random Suns
execute unless score roundTick game matches 9810.. unless score randomSun timer matches 200.. run scoreboard players add randomSun timer 1
execute unless score roundTick game matches 9810.. if score randomSun timer matches 200.. run function pvz:commands/spawning/spawn_random_sun
execute unless score roundTick game matches 9810.. if score randomSun timer matches 200.. run scoreboard players reset randomSun timer

# Handles Suns
execute as @e[tag=sun] run function pvz:handlers/sun

# Handle Lawnmowers
execute as @e[tag=lawnmower] run function pvz:handlers/lawnmowers

# Handle Garlic
execute as @e[tag=garlic] at @s positioned ~ ~.8 ~ if entity @e[tag=zombie,distance=...4] unless entity @e[tag=zombie,distance=...4,scores={garlic=0..}] run scoreboard players operation @e[tag=zombie,distance=...4] garlic = garlicDuration const
execute as @e[scores={garlic=0..}] run function pvz:handlers/garlic

# Handle Chomper
execute as @e[tag=chomper] run function pvz:handlers/chomper

# Handle Squash
execute as @e[tag=squash] run function pvz:handlers/squash

# Handle Spikeweed
execute as @e[tag=mud] run function pvz:handlers/spikeweed

# Handle Potato Mines
execute as @e[tag=potato] run function pvz:handlers/potato

# Handle Fire Stump
execute as @e[tag=stump] run function pvz:handlers/stump

# Handle Jalapeno
execute as @e[tag=jalapeno] run function pvz:handlers/jalapeno

# Handle Animation
execute as @e[tag=plant] run function pvz:handlers/animations

# RoundManager
execute as @p run function pvz:handlers/roundmanager