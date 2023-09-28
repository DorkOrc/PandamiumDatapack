$execute store success score <target_is_online> variable if entity $(username)

$data modify storage pandamium:temp target set value '{"selector":"$(username)"}'
execute if score <target_is_online> variable matches 0 run data modify storage pandamium:temp target set value '[{"storage":"pandamium.db:players","nbt":"selected.entry.username"}," (offline)"]'

$execute store success score <target_is_jailed> variable if score $(username) jailed matches 1..
execute if score <target_is_jailed> variable matches 1 if score <target_is_online> variable matches 1 run tellraw @s [{"text":"[Jail] ","color":"dark_red"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"red"},{"text":" is already jailed! ","color":"red"},{"text":"[→]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Jail Area","bold":true}," in spectator mode"]}}]
execute if score <target_is_jailed> variable matches 1 if score <target_is_online> variable matches 0 run tellraw @s [{"text":"[Jail] ","color":"dark_red"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"red"},{"text":" is already jailed!","color":"red"}]
execute if score <target_is_jailed> variable matches 1 run return 0

# do jail
execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"a staff member"'

execute if score <target_is_online> variable matches 1 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Jail] ","color":"dark_purple"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"light_purple"}," was jailed by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"light_purple"},"!"]
execute if score <target_is_online> variable matches 1 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Jail] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"}," was jailed by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"gray"},"!"]
execute if score <target_is_online> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Jail] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"}," was jailed by ",{"storage":"pandamium:temp","nbt":"source","interpret":true,"color":"gray"},"!"]

execute if score <target_is_online> variable matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"},"'s id is ",{"storage":"pandamium.db:players","nbt":"selected.entry.id","bold":true},"! ",{"text":"[→]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Jail Area","bold":true}," in spectator mode"]}}]
execute if score <target_is_online> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"target","interpret":true,"color":"gray"},"'s id is ",{"storage":"pandamium.db:players","nbt":"selected.entry.id","bold":true},"!"]

# do jail
$scoreboard players set $(username) jailed 1
$scoreboard players reset $(username) pre_jail_pos_x
$scoreboard players reset $(username) pre_jail_pos_y
$scoreboard players reset $(username) pre_jail_pos_z
$scoreboard players reset $(username) pre_jail_pos_d
$execute as $(username) run function pandamium:triggers/jail/as_player
