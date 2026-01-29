data modify storage do:io input set value {storage:"pandamium.db.players:io",nbt:"selected.entry.data.flair.type.value",interpret:true}
execute unless data storage pandamium.db.players:io selected.entry.data.flair.type{colorable:false} run data modify storage do:io input.color set from storage pandamium.db.players:io selected.entry.data.flair.color
function do:text/resolve
execute unless data storage do:io {output:""} run data modify storage pandamium:cache online_players[-1].flair set from storage do:io output
