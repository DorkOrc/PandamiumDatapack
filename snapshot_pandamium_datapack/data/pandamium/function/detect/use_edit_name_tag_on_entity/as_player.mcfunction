execute store success score <any_actions> variable if data storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.actions[0]
execute if score <any_actions> variable matches 0 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.type set value "minecraft:notice"
execute if score <any_actions> variable matches 0 run data remove storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.exit_action.action
execute if score <any_actions> variable matches 0 run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.action set from storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".dialog.exit_action
execute if score <any_actions> variable matches 0 run return run function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*"

execute as @a[distance=..20,tag=pandamium.edit_entity] run function pandamium:detect/use_edit_name_tag_on_entity/kick_out_other_players

function pandamium:utils/database/players/load/self
data modify storage pandamium.db.players:io selected.entry.data.target_entity set from storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".target
function pandamium:utils/database/players/save
tag @s add pandamium.edit_entity
scoreboard players enable @s edit_entity

function pandamium:utils/show_dialog with storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*"
