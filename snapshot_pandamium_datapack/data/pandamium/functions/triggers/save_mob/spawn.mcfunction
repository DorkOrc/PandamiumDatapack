# run AT @s

tag @s add source
scoreboard players set <returned> variable 0

execute store success score <returned> variable if predicate pandamium:in_spawn run tellraw @s [{"text":"[Save Mob]","color":"dark_red"},{"text":" You cannot use this trigger in spawn!","color":"red"}]

execute if score <returned> variable matches 0 run data modify storage pandamium:temp save_mob.nbt set from entity @s
execute if score <returned> variable matches 0 unless data storage pandamium:temp save_mob.nbt.SelectedItem.tag.pandamium.stored_mob store success score <returned> variable run tellraw @s [{"text":"[Save Mob]","color":"dark_red"},[{"text":" You must be holding a ","color":"red"},[{"text":"[","color":"aqua"},{"text":"Stored Mob Item","color":"gold","hoverEvent":{"action":"show_item","contents":{"id":"clock","tag":"{display:{Lore:['{\"text\":\"Entity Name\",\"color\":\"white\"}','{\"text\":\"entity_type\",\"color\":\"gray\",\"italic\":false}','{\"text\":\"Hold this in your main hand and \",\"color\":\"dark_gray\",\"italic\":false}','[{\"text\":\"run \",\"color\":\"dark_gray\",\"italic\":false},{\"text\":\"/trigger \",\"color\":\"gray\"},{\"text\":\"save_mob.spawn\",\"color\":\"aqua\"},\" to spawn it!\"]'],Name:'{\"color\":\"gold\",\"italic\":false,\"text\":\"Stored Mob Item\"}'},Enchantments:[{}],pandamium:{}}"}}},"]"]," to use this trigger!"]]
execute if score <returned> variable matches 0 run function pandamium:misc/save_mob/spawn_pet_from_item

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Save Mob]","color":"dark_red"},{"text":" Something went wrong!","color":"red"}]

tag @s remove source
scoreboard players reset @s save_mob.spawn
scoreboard players enable @s save_mob.spawn
