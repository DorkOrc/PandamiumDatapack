scoreboard players set <valid_option> variable 1

scoreboard players set <lore_line> variable 0
scoreboard players operation <lore_line> variable -= @s item_font

# add dummy data
execute if score <lore_line> variable matches 1..4 unless data storage pandamium:temp item.tag.display.Lore[0] run data modify storage pandamium:temp item.tag.display.Lore append value '{"text":""}'
execute if score <lore_line> variable matches 2..4 unless data storage pandamium:temp item.tag.display.Lore[1] run data modify storage pandamium:temp item.tag.display.Lore append value '{"text":""}'
execute if score <lore_line> variable matches 3..4 unless data storage pandamium:temp item.tag.display.Lore[2] run data modify storage pandamium:temp item.tag.display.Lore append value '{"text":""}'
execute if score <lore_line> variable matches 4..4 unless data storage pandamium:temp item.tag.display.Lore[3] run data modify storage pandamium:temp item.tag.display.Lore append value '{"text":""}'
execute unless data storage pandamium:temp item.tag.display.Name run data modify storage pandamium:temp item.tag.display.Name set value '{"text":""}'

# make change
execute if score <lore_line> variable matches 1 run function pandamium:triggers/item_font/modify_lore/line_1
execute if score <lore_line> variable matches 2 run function pandamium:triggers/item_font/modify_lore/line_2
execute if score <lore_line> variable matches 3 run function pandamium:triggers/item_font/modify_lore/line_3
execute if score <lore_line> variable matches 4 run function pandamium:triggers/item_font/modify_lore/line_4
# score <text_changed> -> {0,1}

# remove dummy data where necessary
execute if data storage pandamium:temp item.tag.display{Name:'{"text":""}'} run data remove storage pandamium:temp item.tag.display.Name
function pandamium:triggers/item_font/modify_lore/trim
