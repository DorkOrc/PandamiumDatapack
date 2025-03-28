execute unless data storage pandamium:local functions."pandamium:triggers/flair/*".current_type run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" You must choose a flair type before you can choose a colour!"}]
execute if data storage pandamium:local functions."pandamium:triggers/flair/*".current_type{colorable:false} run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" You cannot change the colour of this flair type!"}]

scoreboard players set <colour> variable -100
scoreboard players operation <colour> variable -= @s flair
function pandamium:impl/font/get_colour
execute if score <valid_option> variable matches 0 run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" That is not a valid option!"}]

# update cache
data modify storage pandamium:text input set value {storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".current_value',interpret:true}
data modify storage pandamium:text input.color set from storage pandamium:temp colour.literal
function pandamium:utils/text/input/resolve
function pandamium:utils/database/player_cache/load/self
data modify storage pandamium.db.player_cache:io selected.entry.flair set from storage pandamium:text input
function pandamium:utils/database/player_cache/save

# save changes
data modify storage pandamium.db.players:io selected.entry.data.flair.color set from storage pandamium:temp colour.literal
function pandamium:utils/database/players/save

# feedback
function pandamium:triggers/flair/print_menu/reprint
tellraw @s [{color:"dark_green",text:"[Flair]"},[{color:"green",text:" Changed flair colour: "},[{color:"aqua",text:""},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".base_color_root',interpret:true,extra:[{storage:"pandamium:text",nbt:'input',interpret:true}]}," (",{storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".current_type.name',interpret:true},")"],"!"]]
