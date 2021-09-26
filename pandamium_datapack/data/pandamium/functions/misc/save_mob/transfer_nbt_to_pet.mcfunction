data modify entity @s {} merge from storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_mob
tag @s remove save_mob.spawned
tag @s remove selected_entity

tellraw @p[tag=running_trigger] [{"text":"[Save Mob]","color":"dark_green"},[{"text":" Spawned ","color":"green"},[{"text":"","color":"aqua"},{"selector":"@s"}],"!"]]
