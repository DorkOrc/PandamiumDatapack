execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Warp]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]

# If negative, switch to spectator mode
execute if score @s spawn matches ..-1 run gamemode spectator @s[scores={staff_perms=1..}]
execute if score @s spawn matches ..-1 run scoreboard players operation @s spawn *= #-1 constant

# do teleport
execute if score @s spawn matches 1 run return run function pandamium:misc/warp/spawn
execute if score @s spawn matches 2 run return run function pandamium:misc/warp/nether_spawn
execute if score @s spawn matches 3 run return run function pandamium:misc/warp/end_platform
execute if score @s spawn matches 101 in overworld positioned -330.0 127.0 162.5 rotated -254 2 run return run function pandamium:utils/teleport/here/from_source {source:"warp jail_area"}
execute if score @s spawn matches 102 in overworld positioned -269.0 139.0 120.5 rotated 90 -12 run return run function pandamium:utils/teleport/here/from_source {source:"warp leader_boards_area"}

# else
data modify storage pandamium:temp options set value ["1 → Spawn Area","2 → Nether Roof","3 → End Platform","101 → Jail Area","102 → Leader Boards and Banner Hall"]
tellraw @s [{"text":"[Warp]","color":"dark_red"},[{"text":" That is not a valid option! ","color":"red"},{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":["• ",{"storage":"pandamium:temp","nbt":"options[]","separator":"\n• "}]}}]]
