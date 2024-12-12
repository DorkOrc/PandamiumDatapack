loot give @s loot pandamium:items/custom/pale_garden_compass

execute store success score <first_time> variable if entity @s[advancements={pandamium:pandamium/misc/buy_pale_garden_compass=false}]

execute if score <first_time> variable matches 1 run advancement grant @s only pandamium:pandamium/misc/buy_pale_garden_compass
execute if score <first_time> variable matches 1 run function pandamium:triggers/vote_shop/print_menu/misc

return 1
