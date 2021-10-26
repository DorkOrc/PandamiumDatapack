# run IN pandamium:staff_world

tag @s add running_trigger
execute store success score <can_run> variable if score @s take_binding matches 2..

execute if score @s take_binding matches 1 run function pandamium:misc/print_nearest_non_staff_player

scoreboard players set <player_exists> variable 0
execute if score @s take_binding matches 2.. as @a if score @s id = @p[tag=running_trigger] take_binding store success score <player_exists> variable run tag @s add selected_player
execute if score <player_exists> variable matches 0 run scoreboard players set <can_run> variable 0

execute if score <can_run> variable matches 1 run data modify storage pandamium:temp NBT set from entity @p[tag=selected_player]

scoreboard players set <has_items> variable 0
data modify storage pandamium:temp NBT.Inventory[{tag:{Enchantments:[{id:'binding_curse'}]}}].tag.Enchantments[{id:'binding_curse'}].id set value 'minecraft:binding_curse'
execute if data storage pandamium:temp NBT.Inventory[{Slot:100b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:101b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:102b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:103b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if score <has_items> variable matches 0 run scoreboard players set <can_run> variable 0

execute if score <can_run> variable matches 1 run summon marker 7 64 0 {Tags:['take.pick_chest']}
execute if score <can_run> variable matches 1 run execute as @e[type=marker,tag=take.pick_chest,x=0,limit=1] at @s run function pandamium:misc/take/pick_chest/single

# Success
execute if score @s take_binding matches 2.. if score <can_run> variable matches 1 run tellraw @s [{"text":"","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger staff_world set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Staff World","bold":true,"color":"gold"}]}},{"text":"[Take]","color":"gold"}," Took ",{"score":{"name":"<has_items>","objective":"variable"},"bold":true,"color":"gold"}," items from ",[{"selector":"@p[tag=selected_player]","clickEvent":{"action":"run_command","value":"/trigger staff_world set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Staff World","bold":true,"color":"gold"}]}},"'s "],{"text":"bound armour slots","bold":true},"!"]
execute if score @s take_binding matches 2.. if score <can_run> variable matches 1 as @p[tag=selected_player] at @e[type=marker,tag=take.pick_chest,x=0,limit=1] run function pandamium:misc/take/move/bound_items

# Errors
scoreboard players operation <displayed_error> variable = <can_run> variable
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score @s take_binding matches 2..
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <player_exists> variable matches 1 run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <has_items> variable matches 1.. run tellraw @s [{"text":"[Take] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has no bound items in their armour slots!","color":"red"}]

kill @e[type=marker,tag=take.pick_chest,x=0]
tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s take_binding
scoreboard players enable @s take_binding
