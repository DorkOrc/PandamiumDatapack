# arguments: home

function pandamium:utils/database/players/load/self

$data remove storage pandamium.db.players:io selected.entry.data.homes.$(home).name
$data remove storage pandamium.db.players:io selected.entry.data.homes.$(home).plain_name
$data modify storage pandamium:temp home_name set value {text:"Home $(home)",bold:true}
$function pandamium:impl/database/cache/refresh_personal_home_trigger/main {home:$(home)}

function pandamium:utils/database/players/save
