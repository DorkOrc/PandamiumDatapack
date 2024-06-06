# arguments: main_name, alt_name

#> Pre

# fail if usernames match
$data modify storage pandamium:temp compare set value "$(alt_name)"
$execute if data storage pandamium:temp {compare:"$(main_name)"} run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" Players cannot be an alt of themselves!","color":"red"}]
$execute if data storage pandamium:temp {compare:"$(main_name)"} run return fail

# fail if either player is not in the data base
$execute unless data storage pandamium.db.players:data username_indexes."$(main_name)" run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" \"$(main_name)\" does not exist in the players database!","color":"red"}]
$execute unless data storage pandamium.db.players:data username_indexes."$(main_name)" run return fail
$execute unless data storage pandamium.db.players:data username_indexes."$(alt_name)" run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" \"$(alt_name)\" does not exist in the players database!","color":"red"}]
$execute unless data storage pandamium.db.players:data username_indexes."$(alt_name)" run return fail

#> Main
$data modify storage pandamium:temp arguments set value {main_name:"$(main_name)",alt_name:"$(alt_name)"}
$data modify storage pandamium:temp arguments.main_id set from storage pandamium.db.players:data entries[{username:"$(main_name)"}].id
$data modify storage pandamium:temp arguments.alt_id set from storage pandamium.db.players:data entries[{username:"$(alt_name)"}].id
return run function pandamium:impl/set_alt/main with storage pandamium:temp arguments
