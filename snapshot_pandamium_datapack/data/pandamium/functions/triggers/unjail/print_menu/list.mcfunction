team leave @a
execute as @a run function pandamium:player/ranks/update_team/normal

execute as @a[scores={jailed=1..}] run function pandamium:triggers/unjail/print_menu/entry

execute as @a run function pandamium:player/ranks/update_team
