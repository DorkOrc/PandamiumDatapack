execute unless score @s is_staff_alt matches 1 run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s is_staff_alt matches 1 run data modify storage pandamium:temp source set value '"A staff member"'
tellraw @a[scores={staff_perms=1..}] [{"text":"[Restart] ","color":"red"},{"nbt":"source","storage":"pandamium:temp","interpret":true}," scheduled a server restart! ",{"text":"[❌]","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_red"},{"text":"Cancel","bold":true}," the restart"]},"clickEvent":{"action":"run_command","value":"/trigger restart_server set -3"}}]
tellraw @a[scores={staff_perms=0}] [{"text":"[Restart] ","color":"red"},{"nbt":"source","storage":"pandamium:temp","interpret":true}," scheduled a server restart!"]

scoreboard players set <restart_countdown> global 30
function pandamium:impl/restart_countdown
