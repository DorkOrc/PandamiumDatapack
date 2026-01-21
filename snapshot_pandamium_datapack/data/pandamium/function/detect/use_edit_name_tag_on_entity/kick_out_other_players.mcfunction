function pandamium:utils/database/players/load/self
data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".compare set from storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".target
execute store success score <different> variable run data modify storage pandamium:local functions."pandamium:detect/use_edit_name_tag_on_entity/*".compare set from storage pandamium.db.players:io selected.entry.data.target_entity
execute if score <different> variable matches 1 run return 0

data remove storage pandamium.db.players:io selected.entry.data.target_entity
function pandamium:utils/database/players/save
tag @s remove pandamium.edit_entity
scoreboard players reset @s edit_entity
dialog clear @s
