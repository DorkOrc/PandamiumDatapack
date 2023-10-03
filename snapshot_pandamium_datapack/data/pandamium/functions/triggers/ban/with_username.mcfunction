$execute store success score <target_is_online> variable if entity $(username)

$data modify storage pandamium:temp target set value '{"selector":"$(username)"}'
execute if score <target_is_online> variable matches 0 run data modify storage pandamium:temp target set value '[{"storage":"pandamium.db:players","nbt":"selected.entry.username"}," (offline)"]'

execute if score <target_is_online> variable matches 0 run tellraw @s [{"text":"[Ban] ","color":"dark_red"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"red"},{"text":" is not online! Alert a senior moderator, admin, or owner to have this player banned.","color":"red"}]
execute if score <target_is_online> variable matches 0 run return 0

$execute store success score <target_ranked_equal_or_above> variable if score $(username) staff_rank >= @s staff_rank
execute if score <target_ranked_equal_or_above> variable matches 1 run tellraw @s [{"text":"[Ban]","color":"dark_red"},{"text":" You may not ban ","color":"red"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"red"},{"text":"!","color":"red"}]
execute if score <target_ranked_equal_or_above> variable matches 1 run return 0

# do ban
$execute as $(username) run function pandamium:triggers/ban/as_target
function pandamium:triggers/ban/log_ban

# announce ban
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"a staff member"'

execute unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Ban] ","color":"dark_red"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"red"}," was banned by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"red"},"!"]
execute if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Ban] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"}," was banned by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"gray"},"!"]

tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"},"'s id is ",{"storage":"pandamium.db:players","nbt":"selected.entry.id","bold":true},"!"]
