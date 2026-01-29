function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": edit_entity ",{score:{name:"@s",objective:"edit_entity"}},"]"]

function pandamium:triggers/edit_entity/logic

function pandamium:utils/database/players/load/self
data remove storage pandamium.db.players:io selected.entry.data.target_entity
function pandamium:utils/database/players/save
tag @s remove pandamium.edit_entity
scoreboard players reset @s edit_entity
dialog clear @s
