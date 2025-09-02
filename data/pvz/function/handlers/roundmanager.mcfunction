# UI
title @s actionbar ["",{"text":"====[ "},{"text":"Suns:","color":"yellow"},{"text":" "},{"score":{"name":"suns","objective":"game"},"color":"aqua"},{"text":" | "},{"text":"Wave:","color":"yellow"},{"text":" "},{"score":{"name":"wave","objective":"game"},"color":"aqua"},{"text":" ]===="}]

# Set Waves
execute if score roundTick game matches 0 run title @a title ["",{"text":"Plants","color":"green"},{"text":" vs. "},{"text":"Zombies","color":"gray"}]
execute if score roundTick game matches 0 run title @a subtitle {"text":"The game has started","italic":true}
execute if score roundTick game matches 0 run scoreboard players set wave game 0
execute if score roundTick game matches 4580 run title @a title {"text":"A HUGE WAVE OF ZOMBIES IS APPROACHING!","color":"red"}
execute if score roundTick game matches 4580 run scoreboard players set wave game 1
execute if score roundTick game matches 7040 run title @a title {"text":"A HUGE WAVE OF ZOMBIES IS APPROACHING!","color":"red"}
execute if score roundTick game matches 7040 run scoreboard players set wave game 2
execute if score roundTick game matches 9500 run title @a title {"text":"A HUGE WAVE OF ZOMBIES IS APPROACHING!","color":"red"}
execute if score roundTick game matches 9500 run scoreboard players set wave game 3

# Zombie Spawning Sequence 1 - Wave 0
execute if score roundTick game matches 480 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 1100 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 1740 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 2220 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 2225 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 2820 run function pvz:commands/spawning/spawn_conehead

execute if score roundTick game matches 3340 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 3345 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 3580 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 3585 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 3880 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 3885 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 4120 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 4125 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 4130 run function pvz:commands/spawning/spawn_creeper

# Zombie Spawning Sequence 2 - Wave 1
execute if score roundTick game matches 4720 run function pvz:commands/spawning/spawn_waveflag

execute if score roundTick game matches 4820 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 4825 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 4840 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 4845 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 4850 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 4860 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 4865 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 5080 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 5085 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 5380 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 5385 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 5390 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 5395 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 5580 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 5585 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 5780 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 5785 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 5840 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 5980 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 5985 run function pvz:commands/spawning/spawn_conehead

execute if score roundTick game matches 6200 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 6205 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 6210 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 6400 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 6405 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 6410 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 6480 run function pvz:commands/spawning/spawn_buckethead

execute if score roundTick game matches 6640 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 6645 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 6650 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 6820 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 6825 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 6830 run function pvz:commands/spawning/spawn_creeper

# Zombie Spawning Sequence 3 - Wave 2
execute if score roundTick game matches 7200 run function pvz:commands/spawning/spawn_waveflag

execute if score roundTick game matches 7300 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 7305 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 7310 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 7315 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 7320 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 7325 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 7330 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 7335 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 7340 run function pvz:commands/spawning/spawn_creeper
execute if score roundTick game matches 7345 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 7500 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 7505 run function pvz:commands/spawning/spawn_conehead

execute if score roundTick game matches 7620 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 7625 run function pvz:commands/spawning/spawn_conehead

execute if score roundTick game matches 7920 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 7925 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 7930 run function pvz:commands/spawning/spawn_polevault
execute if score roundTick game matches 7935 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 8120 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 8125 run function pvz:commands/spawning/spawn_conehead

execute if score roundTick game matches 8320 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 8325 run function pvz:commands/spawning/spawn_buckethead

execute if score roundTick game matches 8380 run function pvz:commands/spawning/spawn_polevault

execute if score roundTick game matches 8520 run function pvz:commands/spawning/spawn_football
execute if score roundTick game matches 8525 run function pvz:commands/spawning/spawn_conehead

execute if score roundTick game matches 8540 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 8545 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 8550 run function pvz:commands/spawning/spawn_conehead

execute if score roundTick game matches 8750 run function pvz:commands/spawning/spawn_polevault
execute if score roundTick game matches 8755 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 8760 run function pvz:commands/spawning/spawn_polevault

execute if score roundTick game matches 8800 run function pvz:commands/spawning/spawn_buckethead

execute if score roundTick game matches 8960 run function pvz:commands/spawning/spawn_football
execute if score roundTick game matches 8965 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 8970 run function pvz:commands/spawning/spawn_creeper

execute if score roundTick game matches 9250 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 9255 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 9260 run function pvz:commands/spawning/spawn_conehead

# Zombie Spawning Sequence 4 - Wave 3
execute if score roundTick game matches 9660 run function pvz:commands/spawning/spawn_waveflag

execute if score roundTick game matches 9760 run function pvz:commands/spawning/spawn_football
execute if score roundTick game matches 9765 run function pvz:commands/spawning/spawn_football
execute if score roundTick game matches 9770 run function pvz:commands/spawning/spawn_polevault
execute if score roundTick game matches 9775 run function pvz:commands/spawning/spawn_polevault
execute if score roundTick game matches 9780 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 9785 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 9790 run function pvz:commands/spawning/spawn_buckethead
execute if score roundTick game matches 9795 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 9800 run function pvz:commands/spawning/spawn_conehead
execute if score roundTick game matches 9805 run function pvz:commands/spawning/spawn_conehead

# Round sequence
execute unless score roundTick game matches 9810.. run scoreboard players add roundTick game 1

# ADVENTURE 2 DAY 9 ANALYSIS
# 0:00 start (+0:00)
# 0:24 creeper (+0:24) = 480 tick
# 0:55 creeper (+0:31) = 1100 tick
# 1:27 creeper (+0:32) = 1740 tick
# 1:51 creeper creeper (+0:24) = 2220 tick
# 2:21 conehead (+0:30) = 2820 tick
# 2:47 conehead creeper (+0:26) = 3340 tick
# 2:59 conehead creeper (+0:12) = 3580 tick
# 3:14 creeper creeper (+0:15) = 3880 tick
# 3:26 conehead creeper creeper (+0:12) = 4120 tick

# 3:49 A HUGE WAVE OF ZOMBIES IS APPROACHING! (+0:23) = 4580
# 3:56 waveflag (+0:07) = 4720 tick
# 4:01 creeper creeper (+0:05) = 4820 tick
# 4:02 buckethead creeper creeper (+0:01) = 4840 tick
# 4:03 creeper creeper (+0:01) = 4860 tick
# 4:14 buckethead creeper (+0:11) = 5080 tick
# 4:29 conehead creeper creeper creeper (+0:15) = 5380 tick
# 4:39 buckethead creeper (+0:10) = 5580 tick
# 4:49 buckethead creeper (+0:10) = 5780 tick
# 4:52 creeper (+0:03) = 5840 tick
# 4:59 buckethead conehead (+0:07) = 5980 tick
# 5:10 buckethead conehead creeper (+0:11) = 6200 tick
# 5:20 creeper creeper creeper (+0:10) = 6400 tick
# 5:24 buckethead (+0:04) = 6480 tick
# 5:32 buckethead creeper creeper (+0:08) = 6640 tick
# 5:41 buckethead conehead creeper (+0:09) = 6820 tick

# 5:52 A HUGE WAVE OF ZOMBIES IS APPROACHING! (+0:09) = 7040
# 6:00 waveflag (+0:08) = 7200 tick
# 6:05 buckethead conehead creeper creeper creeper creeper creeper creeper creeper creeper (+0:05) = 7300 tick