$execute store success score <target_is_online> variable if entity $(username)

$data modify storage pandamium:temp target set value '{"selector":"$(username)"}'
execute if score <target_is_online> variable matches 0 run data modify storage pandamium:temp target set value '[{"storage":"pandamium.db:players","nbt":"selected.entry.username"}," (offline)"]'

execute if score <target_is_online> variable matches 0 run tellraw @s [{"text":"[Kick] ","color":"dark_red"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"red"},{"text":" is not online!","color":"red"}]
execute if score <target_is_online> variable matches 0 run return 0

# do kick
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"a staff member"'

execute unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Kick] ","color":"dark_aqua"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"aqua"}," was kicked by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"aqua"},"!"]
execute if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Kick] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"}," was kicked by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"gray"},"!"]

tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Kick] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"},"'s id is ",{"storage":"pandamium.db:players","nbt":"selected.entry.id","bold":true},"!"]

# do kick
$execute as $(username) run function pandamium:triggers/kick/as_target
function pandamium:triggers/kick/do_kick with storage pandamium:templates macro.username

