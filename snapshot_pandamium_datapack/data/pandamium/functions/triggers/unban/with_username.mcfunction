$execute store success score <target_is_online> variable if entity $(username)

$data modify storage pandamium:temp target set value '{"selector":"$(username)"}'
execute if score <target_is_online> variable matches 0 run data modify storage pandamium:temp target set value '[{"storage":"pandamium.db:players","nbt":"selected.entry.username"}," (offline)"]'

execute if score <target_is_online> variable matches 1 run tellraw @s [{"text":"[Unban] ","color":"dark_red"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"red"},{"text":" is online!","color":"red"}]
execute if score <target_is_online> variable matches 1 run return 0

# do unban
scoreboard players set <success> variable 0
function pandamium:triggers/unban/do_unban with storage pandamium:templates macro.username
execute if score <success> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Unban]","color":"dark_red"}," Could not unban ",{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"red"},"!"]
execute if score <success> variable matches 0 run return 0

function pandamium:triggers/unban/log_unban

# announce unban
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"a staff member"'

tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Unban] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"}," was unbanned by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"gray"},"!"]

tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"},"'s id is ",{"storage":"pandamium.db:players","nbt":"selected.entry.id","bold":true},"!"]
