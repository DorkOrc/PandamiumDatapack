data modify storage pandamium:local functions."pandamium:triggers/flair/*".current_type set from storage pandamium.db.players:io selected.entry.data.flair.type
execute unless data storage pandamium:local functions."pandamium:triggers/flair/*".current_type.value run return fail
execute unless data storage pandamium:local functions."pandamium:triggers/flair/*".current_type.name run data modify storage pandamium:local functions."pandamium:triggers/flair/*".current_type.name set value {italic:true,text:"Custom Flair"}

data modify storage pandamium:local functions."pandamium:triggers/flair/*".current_value set value {storage:"pandamium:local",nbt:'functions."pandamium:triggers/flair/*".current_type.value',interpret:true}
execute unless data storage pandamium:local functions."pandamium:triggers/flair/*".current_type{colorable:false} run data modify storage pandamium:local functions."pandamium:triggers/flair/*".current_value.color set from storage pandamium.db.players:io selected.entry.data.flair.color
