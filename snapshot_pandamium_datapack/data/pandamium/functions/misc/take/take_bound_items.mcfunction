# run IN pandamium:staff_world
data modify storage pandamium:temp NBT set from entity @s

data modify storage pandamium:temp NBT.Inventory[{tag:{Enchantments:[{id:'binding_curse'}]}}].tag.Enchantments[{id:'binding_curse'}].id set value 'minecraft:binding_curse'
scoreboard players set <has_items> variable 0
execute if data storage pandamium:temp NBT.Inventory[{Slot:100b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:101b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:102b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:103b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute store success score <returned> variable unless score <has_items> variable matches 1.. run tellraw @p[tag=running_trigger] [{"text":"[Take] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" is not wearing any items cursed with binding!","color":"red"}]

execute if score <returned> variable matches 0 run summon marker 7 64 0 {Tags:['take.pick_chest']}
execute if score <returned> variable matches 0 as @e[type=marker,tag=take.pick_chest,x=0,limit=1] at @s run function pandamium:misc/take/pick_chest/single
execute if score <returned> variable matches 0 at @e[type=marker,tag=take.pick_chest,x=0,limit=1] run function pandamium:misc/take/move/bound_items
execute if score <returned> variable matches 0 run kill @e[type=marker,tag=take.pick_chest,x=0]
