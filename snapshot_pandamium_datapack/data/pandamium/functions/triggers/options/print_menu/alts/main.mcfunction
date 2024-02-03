tellraw @s [{"text":"Alts:","color":"aqua","bold":true}]

data modify storage pandamium:temp alts set from storage pandamium.db.players:io selected.entry.data.alts
function pandamium:triggers/options/print_menu/alts/loop with storage pandamium:temp alts[0]
