execute unless data storage pandamium.db.players:io selected.entry.data.flair run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" You must choose a flair type before you can choose a colour!"}]
execute unless data storage pandamium.db.players:io selected.entry.data.flair.color run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" That is not a valid option!"}]

# update cache
function pandamium:utils/database/player_cache/load/self
data modify storage pandamium.db.player_cache:io selected.entry.flair set from storage pandamium:local functions."pandamium:triggers/flair/*".current_type.value
function pandamium:utils/database/player_cache/save

# save changes
data remove storage pandamium.db.players:io selected.entry.data.flair.color
function pandamium:utils/database/players/save

# feedback
function pandamium:triggers/flair/print_menu/reprint
tellraw @s [{color:"dark_green",text:"[Flair]"},[{color:"green",text:" Changed flair colour: "},[{color:"aqua",text:""},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".base_color_root',interpret:true,extra:[{storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".current_type.value',interpret:true}]}," (",{storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".new_type.name',interpret:true},")"],"!"]]
