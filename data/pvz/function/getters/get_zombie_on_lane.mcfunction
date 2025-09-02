# lane 0
execute if entity @s[scores={lane=0}] if entity @e[tag=zombie,scores={lane=0}] run tag @s add hasTarget
execute if entity @s[tag=hasTarget,scores={lane=0}] unless entity @e[tag=zombie,scores={lane=0}] run tag @s remove hasTarget

# lane 1
execute if entity @s[scores={lane=1}] if entity @e[tag=zombie,scores={lane=1}] run tag @s add hasTarget
execute if entity @s[tag=hasTarget,scores={lane=1}] unless entity @e[tag=zombie,scores={lane=1}] run tag @s remove hasTarget

# lane 2
execute if entity @s[scores={lane=2}] if entity @e[tag=zombie,scores={lane=2}] run tag @s add hasTarget
execute if entity @s[tag=hasTarget,scores={lane=2}] unless entity @e[tag=zombie,scores={lane=2}] run tag @s remove hasTarget

# lane 3
execute if entity @s[scores={lane=3}] if entity @e[tag=zombie,scores={lane=3}] run tag @s add hasTarget
execute if entity @s[tag=hasTarget,scores={lane=3}] unless entity @e[tag=zombie,scores={lane=3}] run tag @s remove hasTarget

# lane 4
execute if entity @s[scores={lane=4}] if entity @e[tag=zombie,scores={lane=4}] run tag @s add hasTarget
execute if entity @s[tag=hasTarget,scores={lane=4}] unless entity @e[tag=zombie,scores={lane=4}] run tag @s remove hasTarget