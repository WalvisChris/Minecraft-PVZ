execute at @s run particle flame 4 ~ ~ 1.6 .1 .1 0 1000
function pvz:setters/set_lane
execute as @e[tag=zombie] if score @s lane = @e[tag=jalapeno,limit=1,sort=nearest] lane run kill @s
kill @s