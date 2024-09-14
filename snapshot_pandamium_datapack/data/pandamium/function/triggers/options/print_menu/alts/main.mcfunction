tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

tellraw @s [{"text":"Alts:","color":"aqua","bold":true}]

data modify storage pandamium:temp alts set from storage pandamium.db.players:io selected.entry.data.alts
function pandamium:triggers/options/print_menu/alts/loop with storage pandamium:temp alts[0]

function pandamium:triggers/options/print_menu/footer
