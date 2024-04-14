data remove storage pandamium:temp origin_trigger

#
execute if score @s search_players matches -2146999999..-2146000001 run return run function pandamium:triggers/search_players/click_events/main

execute if score @s search_players matches 1.. run return run function pandamium:triggers/search_players/click_events/search_names/main {search:""}

# else
tellraw @s [{"text":"[Search Players]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
