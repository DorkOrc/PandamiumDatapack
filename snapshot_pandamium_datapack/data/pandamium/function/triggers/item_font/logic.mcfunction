execute unless predicate pandamium:player/min_gameplay_perms/supporter run tellraw @s [{text:"[Item Font]",color:"dark_red"},{storage:"pandamium:dictionary",nbt:"triggers.supporter_only_trigger",interpret:true}]
execute unless predicate pandamium:player/min_gameplay_perms/supporter run return run tellraw @s {text:" This command would let you change the colours and fonts of your items!",color:"gray"}

execute if score @s jailed matches 1.. run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]
execute if entity @s[gamemode=spectator] run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You cannot use this trigger in spectator mode!",color:"red"}]

# menu
execute if score @s item_font matches 101 run return run function pandamium:triggers/item_font/print_menu/gradients
execute if score @s item_font matches 1.. run return run function pandamium:triggers/item_font/print_menu/normal

# modify lore
execute if score @s item_font matches -4..-1 run return run function pandamium:triggers/item_font/modify_lore/main

# select gradient left colour
execute if score @s item_font matches -199..-101 run return run function pandamium:triggers/item_font/input_left_color/main

# modify name
execute if score @s item_font matches -1999..-1001 run return run function pandamium:triggers/item_font/modify_name/main

# else
tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" That is not a valid option",color:"red"}]
