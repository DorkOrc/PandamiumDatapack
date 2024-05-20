# search nearby for homes
execute if score @s search_nearby matches 1.. run return run function pandamium:triggers/search_nearby/do_search

# dynamic click events
execute if score @s search_nearby matches -2146999999..-2146000001 run return run function pandamium:triggers/search_nearby/click_events/main

# else
tellraw @s [{"text":"[Search Nearby]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
