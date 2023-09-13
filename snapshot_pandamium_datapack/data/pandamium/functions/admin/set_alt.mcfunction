# arguments: main_name, alt_name

#> Pre

# fail if usernames match
$data modify storage pandamium:temp compare set value "$(alt_name)"
$execute if data storage pandamium:temp {compare:"$(main_name)"} run tellraw @s {"text":"Error: Player cannot be an alt of itself.","color":"red"}
$execute if data storage pandamium:temp {compare:"$(main_name)"} run return 0

# fail if either player is not in the data base
$execute unless data storage pandamium.db:players username_indexes."$(main_name)" run tellraw @s {"text":"Error: \"$(main_name)\" does not exist in the players database.","color":"red"}
$execute unless data storage pandamium.db:players username_indexes."$(main_name)" run return 0
$execute unless data storage pandamium.db:players username_indexes."$(alt_name)" run tellraw @s {"text":"Error: \"$(alt_name)\" does not exist in the players database.","color":"red"}
$execute unless data storage pandamium.db:players username_indexes."$(alt_name)" run return 0

#> Main
$data modify storage pandamium:temp arguments set value {main_name:"$(main_name)",alt_name:"$(alt_name)"}
$data modify storage pandamium:temp arguments.main_id set from storage pandamium.db:players entries[{username:"$(main_name)"}].id
$data modify storage pandamium:temp arguments.alt_id set from storage pandamium.db:players entries[{username:"$(alt_name)"}].id
function pandamium:impl/set_alt/main with storage pandamium:temp arguments
