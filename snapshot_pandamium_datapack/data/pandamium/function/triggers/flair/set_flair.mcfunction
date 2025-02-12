# arguments: index

data remove storage pandamium:local functions."pandamium:triggers/flair/*".new_flair
$execute store success score <valid_option> variable run data modify storage pandamium:local functions."pandamium:triggers/flair/*".new_flair set from storage pandamium:dictionary flair.flairs[$(index)]
execute if score <valid_option> variable matches 0 run return run tellraw @s [{text:"[Flair]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

# set flair
execute unless data storage pandamium:local functions."pandamium:triggers/flair/*".new_flair{custom:1b} unless data storage pandamium.db.players:io selected.entry.data.flair{custom:1b} run data modify storage pandamium:local functions."pandamium:triggers/flair/*".new_flair.color set from storage pandamium.db.players:io selected.entry.data.flair.color
execute store success score <changed> variable run data modify storage pandamium.db.players:io selected.entry.data.flair set from storage pandamium:local functions."pandamium:triggers/flair/*".new_flair

# fail if nothing changed
execute if score <changed> variable matches 0 run return run tellraw @s [{text:"[Flair]",color:"dark_red"},{text:" Nothing changed!",color:"red"}]

# save changes
function pandamium:utils/database/players/save

tellraw @s [{text:"[Flair]",color:"dark_green"},{text:" Set ",color:"green",extra:[{text:"flair type",color:"aqua"}," to ",{color:"aqua",text:"",extra:[{storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".new_flair',interpret:true}]},"!"]}]
