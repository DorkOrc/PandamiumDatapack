data modify storage pandamium:text input set value {storage:"pandamium.db.players:io",nbt:"selected.entry.data.flair.type.value",interpret:true}
execute unless data storage pandamium.db.players:io selected.entry.data.flair.type{colorable:false} run data modify storage pandamium:text input.color set from storage pandamium.db.players:io selected.entry.data.flair.color
function pandamium:utils/text/input/resolve
execute unless data storage pandamium:text {input:""} run data modify storage pandamium:cache online_players[-1].flair set from storage pandamium:text input
