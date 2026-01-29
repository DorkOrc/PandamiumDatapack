execute unless data storage pandamium.db.players:io selected.entry.data.flair run return 1

# copy and delete old data
data remove storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3"
data modify storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".original_data set from storage pandamium.db.players:io selected.entry.data.flair
data modify storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".old_data set from storage pandamium.db.players:io selected.entry.data.flair
data remove storage pandamium.db.players:io selected.entry.data.flair

# get color
scoreboard players set <variable_color_option> variable 0
function pandamium:impl/database/players/patch/versions/version_3/check_for_variable_color
execute if score <variable_color_option> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".color set from storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".old_data.color
execute if score <variable_color_option> variable matches 1 run data remove storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".old_data.color

# get type
function pandamium:impl/database/players/patch/versions/version_3/get_type_number

# if not type is found, inline it
execute store success score <inline> variable unless data storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".type
execute if score <inline> variable matches 1 run data modify storage do:io input set from storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".old_data
execute if score <inline> variable matches 1 run function do:text/resolve
execute if score <inline> variable matches 1 if data storage do:io {output:""} run return 1
execute if score <inline> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".type.name set value "Legacy Flair Type"
execute if score <inline> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".type.value set from storage do:io output

# save data
execute unless data storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".type run return 1

data modify storage pandamium.db.players:io selected.entry.data.flair.type set from storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".type
data modify storage pandamium.db.players:io selected.entry.data.flair.color set from storage pandamium:local functions."pandamium:impl/database/players/patch/version/version_3".color

function pandamium:utils/log {args:{message:["Fixed Data: Converted ",{storage:"pandamium:local",nbt:'functions."pandamium:impl/database/players/patch/version/version_3".original_data'}," flair data into ",{storage:"pandamium.db.players:io",nbt:"selected.entry.data.flair"}]}}
