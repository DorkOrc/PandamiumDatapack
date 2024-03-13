scoreboard players set <dropped_items> variable 1

kill @e[type=item,x=29999999,y=0,z=29999999,distance=..0.01]

data modify storage pandamium:temp nbt set from entity @s

setblock ~ ~ ~ yellow_shulker_box
data modify block ~ ~ ~ Items set from storage pandamium:temp nbt.Inventory
data remove block ~ ~ ~ Items[{components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}}]
loot spawn ~ ~ ~ mine ~ ~ ~ barrier{drop_contents:1b}

loot replace block ~ ~ ~ container.0 27 loot empty
item replace block ~ ~ ~ container.0 from entity @s container.27
item replace block ~ ~ ~ container.1 from entity @s container.28
item replace block ~ ~ ~ container.2 from entity @s container.29
item replace block ~ ~ ~ container.3 from entity @s container.30
item replace block ~ ~ ~ container.4 from entity @s container.31
item replace block ~ ~ ~ container.5 from entity @s container.32
item replace block ~ ~ ~ container.6 from entity @s container.33
item replace block ~ ~ ~ container.7 from entity @s container.34
item replace block ~ ~ ~ container.8 from entity @s container.35
item replace block ~ ~ ~ container.9 from entity @s armor.feet
item replace block ~ ~ ~ container.10 from entity @s armor.legs
item replace block ~ ~ ~ container.11 from entity @s armor.chest
item replace block ~ ~ ~ container.12 from entity @s armor.head
item replace block ~ ~ ~ container.13 from entity @s weapon.offhand
item replace block ~ ~ ~ container.14 from entity @s player.cursor
item replace block ~ ~ ~ container.15 from entity @s player.crafting.0
item replace block ~ ~ ~ container.16 from entity @s player.crafting.1
item replace block ~ ~ ~ container.17 from entity @s player.crafting.2
item replace block ~ ~ ~ container.18 from entity @s player.crafting.3
data remove block ~ ~ ~ Items[{components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}}]
loot spawn ~ ~ ~ mine ~ ~ ~ barrier{drop_contents:1b}

execute at @s rotated ~ 0 anchored eyes run tp @e[type=item,x=29999999,y=0,z=29999999,distance=..0.01] ^ ^-0.3 ^

clear @s

execute store result score <levels> variable run data get storage pandamium:temp nbt.XpLevel
execute if score <levels> variable matches 15.. run scoreboard players set <levels> variable 14
xp set @s 0 levels
xp set @s 0 points
execute if score <levels> variable matches 8.. at @s run summon experience_orb ~ ~ ~ {Value:56}
execute if score <levels> variable matches 8.. run scoreboard players remove <levels> variable 8
execute if score <levels> variable matches 4.. at @s run summon experience_orb ~ ~ ~ {Value:28}
execute if score <levels> variable matches 4.. run scoreboard players remove <levels> variable 4
execute if score <levels> variable matches 2.. at @s run summon experience_orb ~ ~ ~ {Value:14}
execute if score <levels> variable matches 2.. run scoreboard players remove <levels> variable 2
execute if score <levels> variable matches 1.. at @s run summon experience_orb ~ ~ ~ {Value:7}
execute if score <levels> variable matches 1.. run scoreboard players remove <levels> variable 1
