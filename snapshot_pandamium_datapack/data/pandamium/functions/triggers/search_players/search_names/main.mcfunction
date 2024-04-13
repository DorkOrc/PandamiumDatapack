# arguments: search

$data modify storage pandamium:templates macro.search.search set value "$(search)"

# search
function pandamium:impl/usernames_map/search_name/main with storage pandamium:templates macro.search

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Search Players","bold":true}," ========"]
function pandamium:triggers/search_players/search_names/contents
tellraw @s {"text":"=================================","color":"aqua"}
