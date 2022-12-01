# run IN pandamium:staff_world
data modify storage pandamium:temp inventory set from entity @s Inventory

data modify storage pandamium:temp inventory[{tag:{Enchantments:[{id:'binding_curse'}]}}].tag.Enchantments[{id:'binding_curse'}].id set value 'minecraft:binding_curse'
execute store success score <feet_slot_bound> variable if data storage pandamium:temp inventory[{Slot:100b}].tag.Enchantments[{id:'minecraft:binding_curse'}]
execute store success score <legs_slot_bound> variable if data storage pandamium:temp inventory[{Slot:101b}].tag.Enchantments[{id:'minecraft:binding_curse'}]
execute store success score <chest_slot_bound> variable if data storage pandamium:temp inventory[{Slot:102b}].tag.Enchantments[{id:'minecraft:binding_curse'}]
execute store success score <head_slot_bound> variable if data storage pandamium:temp inventory[{Slot:103b}].tag.Enchantments[{id:'minecraft:binding_curse'}]

scoreboard players set <has_items> variable 0
execute if score <feet_slot_bound> variable matches 1 run scoreboard players add <item_count> variable 1
execute if score <legs_slot_bound> variable matches 1 run scoreboard players add <item_count> variable 1
execute if score <chest_slot_bound> variable matches 1 run scoreboard players add <item_count> variable 1
execute if score <head_slot_bound> variable matches 1 run scoreboard players add <item_count> variable 1

execute store success score <returned> variable if score <has_items> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"[Take] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" is not wearing any items cursed with binding!","color":"red"}]

execute if score <returned> variable matches 0 run summon marker 7 64 0 {Tags:['take.pick_chest']}
execute if score <returned> variable matches 0 as @e[type=marker,tag=take.pick_chest,x=0,limit=1] at @s run function pandamium:misc/take/pick_chest/single
execute if score <returned> variable matches 0 at @e[type=marker,tag=take.pick_chest,x=0,limit=1] run function pandamium:misc/take/move/bound_items
execute if score <returned> variable matches 0 run kill @e[type=marker,tag=take.pick_chest,x=0]
