# Increment
execute unless score @s timer >= sunflowerReload const run scoreboard players add @s timer 1

# Glowing / Highlight
effect give @s[scores={timer=440}] glowing 2 1 true

# Spawn sun
execute if score @s timer >= sunflowerReload const at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,components:{custom_name:'{"text":"Sunflower","color":"gold","underlined":true,"bold":true,"italic":false}',lore:['{"text":"Custom Head ID: 121025","color":"gray","italic":false}','{"text":"www.minecraft-heads.com","color":"blue","italic":false}'],profile:{id:[I;1164105149,-353481797,-1924485345,-31805081],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZmZmM3YTMzODIxOTkyZThkYTY1MDMzNGIxMTY0ZDcxM2QxMGUxYjMxZGEzOGZjMTZlZGUwZWRlNmQ2ZTY5NCJ9fX0="}]}}}],Tags:["sun"],Motion:[0.0,0.4,0.0]}

# Reset
execute if score @s timer >= sunflowerReload const run scoreboard players reset @s timer