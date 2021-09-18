data modify entity @s {} merge from storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet
tag @s remove store_pet.spawned

tellraw @p[tag=running_trigger] [{"text":"[Pet]","color":"dark_green"},[{"text":" Spawned ","color":"green"},[{"text":"","color":"aqua"},{"selector":"@s"}],"!"]]
