team leave @a
execute as @a run function pandamium:player/ranks/update_team/normal

scoreboard players operation <source_id> variable = @s id

execute as @a[team=guest] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=player] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=member] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=elder] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=veteran] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=elite] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=helper] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=mod] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=srmod] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=admin] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=owner] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=donator] run function pandamium:triggers/gift/print_menu/entry
execute as @a[team=vip] run function pandamium:triggers/gift/print_menu/entry

execute as @a run function pandamium:player/ranks/update_team
