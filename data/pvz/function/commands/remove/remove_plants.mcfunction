# remove stem
execute as @e[tag=plant] at @s if block ~ ~ ~ potted_cactus run setblock ~ ~ ~ air

# Kill
kill @e[tag=plant]
kill @e[tag=bullet]
kill @e[tag=sun]
kill @e[tag=random]
kill @e[tag=lawnmower]
kill @e[tag=dot]