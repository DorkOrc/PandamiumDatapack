execute store result score <source_is_guest> variable if score @s gameplay_perms matches 0
scoreboard players operation <source_id> variable = @s id

execute as @a[scores={gameplay_perms=0,staff_perms=0}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={gameplay_perms=1,staff_perms=0}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={gameplay_perms=2,staff_perms=0}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={gameplay_perms=3,staff_perms=0}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={gameplay_perms=4,staff_perms=0}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={gameplay_perms=5,staff_perms=0}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={staff_perms=1}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={staff_perms=2}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={staff_perms=3}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={staff_perms=4}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={staff_perms=5}] run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={gameplay_perms=6,staff_perms=0}] unless score @s vip_rank matches 1 run function pandamium:triggers/tpa/print_menu/entry
execute as @a[scores={gameplay_perms=6,staff_perms=0,vip_rank=1}] run function pandamium:triggers/tpa/print_menu/entry
