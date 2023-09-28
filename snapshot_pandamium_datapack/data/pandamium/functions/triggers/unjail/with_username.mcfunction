$execute store success score <target_is_online> variable if entity $(username)

$data modify storage pandamium:temp target set value '{"selector":"$(username)"}'
execute if score <target_is_online> variable matches 0 run data modify storage pandamium:temp target set value '[{"storage":"pandamium.db:players","nbt":"selected.entry.username"}," (offline)"]'

$execute store success score <target_is_jailed> variable if score $(username) jailed matches 1..
execute if score <target_is_jailed> variable matches 0 run tellraw @s [{"text":"[Unjail] ","color":"dark_red"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"red"},{"text":" is not jailed!","color":"red"}]
execute if score <target_is_jailed> variable matches 0 run return 0

# do unjail
$execute as $(username) run function pandamium:misc/warp/spawn
$scoreboard players reset $(username) jailed
$scoreboard players reset $(username) cheater

# announce unjail
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"a staff member"'

execute if score <target_is_online> variable matches 1 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Unjail] ","color":"dark_purple"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"light_purple"}," was unjailed by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"light_purple"},"!"]
execute if score <target_is_online> variable matches 1 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Unjail] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"}," was unjailed by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"gray"},"!"]
execute if score <target_is_online> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Unjail] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"}," was unjailed by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"gray"},"!"]

tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"},"'s id is ",{"storage":"pandamium.db:players","nbt":"selected.entry.id","bold":true},"!"]
