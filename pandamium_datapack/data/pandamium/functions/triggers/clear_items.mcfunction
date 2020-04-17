scoreboard objectives add ground_items_age dummy

function pandamium:misc/item_clear/init

scoreboard players reset @s clear_items
scoreboard players enable @s clear_items