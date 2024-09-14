#> Pre
execute if score @s options matches 3..5 unless score @s staff_perms matches 1.. run scoreboard players set @s options 1
execute if score @s options matches 5 unless score <has_alts> variable matches 1 run scoreboard players set @s options 1
execute if score @s options matches 6.. run scoreboard players set @s options 1

#> Main
execute if score @s options matches 1 run return run function pandamium:triggers/options/print_menu/gameplay
execute if score @s options matches 2 run return run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches 3 run return run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches 4 run return run function pandamium:triggers/options/print_menu/server
execute if score @s options matches 5 run return run function pandamium:triggers/options/print_menu/alts/main

tellraw @s "?"
