scoreboard players set <dropped_items> variable 1

# make sure the dummy yellow shulker box is placed.
setblock 29999999 0 29999999 yellow_shulker_box{Lock:"§r"}

# remove all items with the curse of vanishing.
clear @s *[enchantments~[{enchantments:"minecraft:vanishing_curse"}]]

# fix rainbow items
scoreboard players set <rainbow_armor.modifying> global 1
execute if items entity @s armor.feet *[custom_data~{pandamium:{rainbow:{}}}] run function pandamium:detect/obtain_rainbow_item/fix_item {slot:"armor.feet"}
execute if items entity @s armor.legs *[custom_data~{pandamium:{rainbow:{}}}] run function pandamium:detect/obtain_rainbow_item/fix_item {slot:"armor.legs"}
execute if items entity @s armor.chest *[custom_data~{pandamium:{rainbow:{}}}] run function pandamium:detect/obtain_rainbow_item/fix_item {slot:"armor.chest"}
execute if items entity @s armor.head *[custom_data~{pandamium:{rainbow:{}}}] run function pandamium:detect/obtain_rainbow_item/fix_item {slot:"armor.head"}
scoreboard players set <rainbow_armor.modifying> global 0

# drop the first 27 items by directly copying from the player's `Inventory` NBT data
data modify block 29999999 0 29999999 Items set from entity @s Inventory
loot spawn ~ ~ ~ mine 29999999 0 29999999 barrier[custom_data={drop_contents:true}]

# clear the shulker box, then copy the remaining slots into it and drop those
loot replace block 29999999 0 29999999 container.0 27 loot pandamium:intentionally_empty
item replace block 29999999 0 29999999 container.0 from entity @s container.27
item replace block 29999999 0 29999999 container.1 from entity @s container.28
item replace block 29999999 0 29999999 container.2 from entity @s container.29
item replace block 29999999 0 29999999 container.3 from entity @s container.30
item replace block 29999999 0 29999999 container.4 from entity @s container.31
item replace block 29999999 0 29999999 container.5 from entity @s container.32
item replace block 29999999 0 29999999 container.6 from entity @s container.33
item replace block 29999999 0 29999999 container.7 from entity @s container.34
item replace block 29999999 0 29999999 container.8 from entity @s container.35
item replace block 29999999 0 29999999 container.9 from entity @s armor.feet
item replace block 29999999 0 29999999 container.10 from entity @s armor.legs
item replace block 29999999 0 29999999 container.11 from entity @s armor.chest
item replace block 29999999 0 29999999 container.12 from entity @s armor.head
item replace block 29999999 0 29999999 container.13 from entity @s weapon.offhand
item replace block 29999999 0 29999999 container.14 from entity @s player.cursor
item replace block 29999999 0 29999999 container.15 from entity @s player.crafting.0
item replace block 29999999 0 29999999 container.16 from entity @s player.crafting.1
item replace block 29999999 0 29999999 container.17 from entity @s player.crafting.2
item replace block 29999999 0 29999999 container.18 from entity @s player.crafting.3
loot spawn ~ ~ ~ mine 29999999 0 29999999 barrier[custom_data={drop_contents:true}]

# increase the items' horizontal motion to roughly match that of items dropped from an actual player death, and increase the PickupDelay to match it exactly.
execute as @e[type=item,distance=..0.01] store result entity @s Motion[0] double 0.0015 run data get entity @s Motion[0] 1000
execute as @e[type=item,distance=..0.01] store result entity @s Motion[2] double 0.0015 run data get entity @s Motion[2] 1000
execute as @e[type=item,distance=..0.01] run data modify entity @s PickupDelay set value 40s

# clear the player's inventory.
clear @s

# reset the player's XP and spawn orbs to roughly match the values of the algorithm that the game uses (this is very much an approximation).
execute store result score <levels> variable run xp query @s levels
execute if score <levels> variable matches 15.. run scoreboard players set <levels> variable 14
xp set @s 0 levels
xp set @s 0 points
execute if score <levels> variable matches 8.. positioned as @s run summon experience_orb ~ ~ ~ {Value:56}
execute if score <levels> variable matches 8.. run scoreboard players remove <levels> variable 8
execute if score <levels> variable matches 4.. positioned as @s run summon experience_orb ~ ~ ~ {Value:28}
execute if score <levels> variable matches 4.. run scoreboard players remove <levels> variable 4
execute if score <levels> variable matches 2.. positioned as @s run summon experience_orb ~ ~ ~ {Value:14}
execute if score <levels> variable matches 2.. run scoreboard players remove <levels> variable 2
execute if score <levels> variable matches 1.. positioned as @s run summon experience_orb ~ ~ ~ {Value:7}
execute if score <levels> variable matches 1.. run scoreboard players remove <levels> variable 1
