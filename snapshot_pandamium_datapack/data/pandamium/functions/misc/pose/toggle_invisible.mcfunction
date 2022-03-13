execute if data storage pandamium:temp NBT{Invisible:1b} run data merge entity @s {Invisible:0b,DisabledSlots:0}

scoreboard players set <can_toggle_invisible> variable 1
execute unless data storage pandamium:temp NBT{Invisible:1b} unless data storage pandamium:temp NBT.ArmorItems[].id unless data storage pandamium:temp NBT.HandItems[].id run scoreboard players set <can_toggle_invisible> variable 0
execute unless data storage pandamium:temp NBT{Invisible:1b} if score <can_toggle_invisible> variable matches 1 run data merge entity @s {Invisible:1b,DisabledSlots:4144959}
