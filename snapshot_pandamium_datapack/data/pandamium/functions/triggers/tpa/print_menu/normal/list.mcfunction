team leave @a
execute as @a run function pandamium:player/ranks/update_team/normal

execute store result score <source_is_guest> variable if score @s gameplay_perms matches 0
scoreboard players operation <source_id> variable = @s id

execute as @a[team=guest] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=player] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=member] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=elder] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=veteran] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=elite] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=helper] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=mod] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=srmod] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=admin] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=owner] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=donator] run function pandamium:triggers/tpa/print_menu/normal/entry
execute as @a[team=vip] run function pandamium:triggers/tpa/print_menu/normal/entry

execute as @a run function pandamium:player/ranks/update_team
