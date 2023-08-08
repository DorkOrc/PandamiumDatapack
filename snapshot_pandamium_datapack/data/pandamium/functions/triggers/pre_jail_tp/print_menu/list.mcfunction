team leave @a
execute as @a run function pandamium:player/ranks/force_team/normal

execute as @a[scores={temp_1=1}] run function pandamium:triggers/pre_jail_tp/print_menu/entry

execute as @a run function pandamium:player/ranks/update_team
