#execute unless predicate pandamium:can_have_flair run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" Only high-scorers from last month's leader boards and Patreon supporters can set a flair! You can check out our ",hover_event:{action:"show_text",value:[{color:"aqua",text:"Click to join our "},{bold:true,text:"Discord Server"}]},click_event:{action:"open_url",url:"http://discord.pandamium.eu"},extra:[{bold:true,text:"discord server"}," for more information on how to support us, or try to get into the top ten of a monthly leaderboard!"]},{color:"gray",text:"\n This command would let you put a colourful emoji or symbol next to your name so that you can stand out more in chat and the tab-list!"}]

# load data
function pandamium:utils/database/players/load/self

data modify storage pandamium:local functions."pandamium:triggers/flair/*" set value {base_color_root:{text:""}}
data modify storage pandamium:local functions."pandamium:triggers/flair/*".base_color_root.color set from storage pandamium.db.players:io selected.entry.data.flair.color

execute if data storage pandamium.db.players:io selected.entry.data.flair.type unless data storage pandamium.db.players:io selected.entry.data.flair.type{} run function pandamium:triggers/flair/get_current_flair with storage pandamium.db.players:io selected.entry.data.flair
execute if data storage pandamium.db.players:io selected.entry.data.flair.type{} run function pandamium:triggers/flair/get_current_flair_inlined

# menu
execute if score @s flair matches 1.. run return run function pandamium:triggers/flair/dialog/show

# try remove flair
execute if score @s flair matches -1 run return run function pandamium:triggers/flair/remove_flair

# try reset flair colour
execute if score @s flair matches -2 run return run function pandamium:triggers/flair/reset_color

# close dialog
execute if score @s flair matches -3 run return run function pandamium:triggers/flair/close_dialog

# try changing flair colour
execute if score @s flair matches -199..-101 run return run function pandamium:triggers/flair/set_color

# try setting the flair
execute unless score @s flair matches ..-1001 run return run tellraw @s [{color:"dark_red",text:"[Flair]"},{color:"red",text:" That is not a valid option!"}]

scoreboard players set <index> variable -1000
scoreboard players operation <index> variable -= @s flair
execute if score <index> variable matches -128..127 store result storage pandamium:local functions."pandamium:triggers/flair/*".index byte 1 run scoreboard players get <index> variable
execute if score <index> variable matches -32768..32767 unless score <index> variable matches -128..127 store result storage pandamium:local functions."pandamium:triggers/flair/*".index short 1 run scoreboard players get <index> variable
execute unless score <index> variable matches -32768..32767 store result storage pandamium:local functions."pandamium:triggers/flair/*".index int 1 run scoreboard players get <index> variable
function pandamium:triggers/flair/set_flair with storage pandamium:local functions."pandamium:triggers/flair/*"
