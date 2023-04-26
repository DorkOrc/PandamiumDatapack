scoreboard players set <returned> variable 0
tag @s add source

execute unless score @s staff_perms matches 2.. store success score <returned> variable run tellraw @s [{"text":"[TP Pre-Jail]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

execute if score <returned> variable matches 0 if score @s pre_jail_tp matches ..1 store success score <returned> variable run function pandamium:utils/print_nearest_non_staff_player

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s pre_jail_tp
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[TP Pre-Jail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"pre_jail_tp"}},"!"]]

execute if score <returned> variable matches 0 unless score @a[tag=target,limit=1] pre_jail_pos_x matches -2147483648.. store success score <returned> variable run tellraw @s [{"text":"[TP Pre-Jail] ","color":"dark_red"},{"selector":"@a[tag=target,limit=1]","color":"red"},{"text":" has no pre-jail location stored!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation <tp_x> variable = @a[tag=target,limit=1] pre_jail_pos_x
execute if score <returned> variable matches 0 run scoreboard players operation <tp_y> variable = @a[tag=target,limit=1] pre_jail_pos_y
execute if score <returned> variable matches 0 run scoreboard players operation <tp_z> variable = @a[tag=target,limit=1] pre_jail_pos_z
execute if score <returned> variable matches 0 run scoreboard players operation <tp_d> variable = @a[tag=target,limit=1] pre_jail_pos_d

execute if score <returned> variable matches 0 run gamemode spectator
execute if score <returned> variable matches 0 run function pandamium:misc/teleport/to_scores
execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[TP Pre-Jail]","color":"gold"}," Teleported to ",[{"selector":"@a[tag=target,limit=1]"},"'s"]," last ",{"text":"Pre-Jail Location","color":"gold","bold":true}," in spectator mode!"]

tag @a remove target
tag @s remove source
scoreboard players reset @s pre_jail_tp
scoreboard players enable @s pre_jail_tp
