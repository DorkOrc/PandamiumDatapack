# arguments: main_name, alt_name, main_id, alt_id

$function pandamium:utils/database/players/load/from_username {username:"$(main_name)"}

$execute store success score <duplicate> variable if data storage pandamium.db.players:io selected.entry.data.alts[{id:$(alt_id)}]
$execute if score <duplicate> variable matches 1 run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" $(alt_name) is already considered an alt of $(main_name)!","color":"red"}]
execute if score <duplicate> variable matches 1 run return fail

execute store success score <main_is_an_alt> variable if data storage pandamium.db.players:io selected.entry.data.alt_of
$execute if score <main_is_an_alt> variable matches 1 run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" $(main_name) is an alt!","color":"red"}]
execute if score <main_is_an_alt> variable matches 1 run return fail

data modify storage pandamium.db.players:io selected.entry.data.alts append value {}
$data modify storage pandamium.db.players:io selected.entry.data.alts[-1].id set value $(alt_id)
function pandamium:utils/database/players/save

$function pandamium:utils/database/players/load/from_username {username:"$(alt_name)"}
$data modify storage pandamium.db.players:io selected.entry.data.alt_of.id set value $(main_id)
function pandamium:utils/database/players/save
$execute as $(alt_name) run scoreboard players set @s alt_of $(main_id)

#> Post
$tellraw @s [{"text":"[admin]","color":"dark_green"},[{"text":" ","color":"green"},{"text":"$(alt_name)","color":"aqua"}," is now considered an alt account of ",{"text":"$(main_name)","color":"aqua"},"! Please log this in #player-record."]]
