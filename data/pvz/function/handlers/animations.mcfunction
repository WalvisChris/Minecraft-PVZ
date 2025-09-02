# CHOMPER ANIMATION
scoreboard players add @s[tag=chomper,scores={timer=0..}] animationTick 1
execute if entity @s[tag=chomper] if score @s animationTick >= chomperFrames const run scoreboard players set @s animationTick 0

data merge entity @s[tag=chomper,scores={animationTick=0}] {Pose:{Head:[340f,0f,0f]}}
data merge entity @s[tag=chomper,scores={animationTick=5}] {Pose:{Head:[350f,0f,0f]}}
data merge entity @s[tag=chomper,scores={animationTick=10}] {Pose:{Head:[0f,0f,0f]}}
data merge entity @s[tag=chomper,scores={animationTick=15}] {Pose:{Head:[10f,0f,0f]}}
data merge entity @s[tag=chomper,scores={animationTick=20}] {Pose:{Head:[20f,0f,0f]}}
data merge entity @s[tag=chomper,scores={animationTick=25}] {Pose:{Head:[10f,0f,0f]}}
data merge entity @s[tag=chomper,scores={animationTick=30}] {Pose:{Head:[0f,0f,0f]}}
data merge entity @s[tag=chomper,scores={animationTick=35}] {Pose:{Head:[350f,0f,0f]}}

data merge entity @s[tag=chomper,tag=!isChomping,scores={animationTick=0..}] {Pose:{Head:[0f,0f,0f]}}
scoreboard players reset @s[tag=chomper,tag=!isChomping,scores={animationTick=0..}] animationTick

# SUNFLOWER ANIMATION
execute if entity @s[tag=sunflower] unless score @s animationTick >= sunflowerFrames const run scoreboard players add @s animationTick 1
execute if entity @s[tag=sunflower] if score @s animationTick >= sunflowerFrames const run scoreboard players set @s animationTick 0

data merge entity @s[tag=sunflower,scores={animationTick=0}] {Pose:{Head:[0f,0f,340f]}}
data merge entity @s[tag=sunflower,scores={animationTick=5}] {Pose:{Head:[0f,0f,350f]}}
data merge entity @s[tag=sunflower,scores={animationTick=10}] {Pose:{Head:[0f,0f,0f]}}
data merge entity @s[tag=sunflower,scores={animationTick=15}] {Pose:{Head:[0f,0f,10f]}}
data merge entity @s[tag=sunflower,scores={animationTick=20}] {Pose:{Head:[0f,0f,20f]}}
data merge entity @s[tag=sunflower,scores={animationTick=25}] {Pose:{Head:[0f,0f,10f]}}
data merge entity @s[tag=sunflower,scores={animationTick=30}] {Pose:{Head:[0f,0f,0f]}}
data merge entity @s[tag=sunflower,scores={animationTick=35}] {Pose:{Head:[0f,0f,350f]}}

# FIRE STUMP ANIMATION
data merge entity @s[tag=stump] {Fire:20}