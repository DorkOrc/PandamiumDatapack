# run in pandamium:staff_world

tag @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item] add ignore

setblock 7 64 -7 shulker_box
data modify block 7 64 -7 Items set from entity @s Inventory
data remove block 7 64 -7 Items[{tag:{Enchantments:[{id:'minecraft:vanishing_curse'}]}}]
loot spawn 0 0 0 mine 7 64 -7 air{drop_contents:1b}

loot replace block 7 64 -7 container.0 27 loot empty
item block 7 64 -7 container.0 copy entity @s container.27
item block 7 64 -7 container.1 copy entity @s container.28
item block 7 64 -7 container.2 copy entity @s container.29
item block 7 64 -7 container.3 copy entity @s container.30
item block 7 64 -7 container.4 copy entity @s container.31
item block 7 64 -7 container.5 copy entity @s container.32
item block 7 64 -7 container.6 copy entity @s container.33
item block 7 64 -7 container.7 copy entity @s container.34
item block 7 64 -7 container.8 copy entity @s container.35
item block 7 64 -7 container.9 copy entity @s weapon.offhand
item block 7 64 -7 container.10 copy entity @s armor.head
item block 7 64 -7 container.11 copy entity @s armor.chest
item block 7 64 -7 container.12 copy entity @s armor.legs
item block 7 64 -7 container.13 copy entity @s armor.feet
data remove block 7 64 -7 Items[{tag:{Enchantments:[{id:'minecraft:vanishing_curse'}]}}]
loot spawn 0 0 0 mine 7 64 -7 air{drop_contents:1b}

tp @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item,tag=!ignore] @s
tag @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item] remove ignore

loot replace entity @s container.0 36 loot empty
item entity @s armor.head replace air
item entity @s armor.chest replace air
item entity @s armor.legs replace air
item entity @s armor.feet replace air
item entity @s weapon.offhand replace air
setblock 7 64 -7 chest

execute store result score <levels> variable run data get entity @s XpLevel
execute if score <levels> variable matches 15.. run scoreboard players set <levels> variable 14
experience set @s 0 levels
experience set @s 0 points
execute if score <levels> variable matches 8.. at @s run summon experience_orb ~ ~ ~ {Value:56}
execute if score <levels> variable matches 8.. run scoreboard players remove <levels> variable 8
execute if score <levels> variable matches 4.. at @s run summon experience_orb ~ ~ ~ {Value:28}
execute if score <levels> variable matches 4.. run scoreboard players remove <levels> variable 4
execute if score <levels> variable matches 2.. at @s run summon experience_orb ~ ~ ~ {Value:14}
execute if score <levels> variable matches 2.. run scoreboard players remove <levels> variable 2
execute if score <levels> variable matches 1.. at @s run summon experience_orb ~ ~ ~ {Value:7}
execute if score <levels> variable matches 1.. run scoreboard players remove <levels> variable 1
