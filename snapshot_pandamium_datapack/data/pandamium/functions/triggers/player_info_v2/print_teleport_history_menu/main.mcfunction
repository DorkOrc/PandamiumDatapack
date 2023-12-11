$tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Player Info","bold":true}," ========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"storage":"pandamium:temp","nbt":"target","interpret":true}," (",{"score":{"name":"$(username)","objective":"id"},"bold":true},")"]

execute unless data storage pandamium.db:players selected.entry.data.tp_history run return run tellraw @s {"text":" No recorded teleport history found","color":"gray"}

data modify storage pandamium:temp entries set value []
data modify storage pandamium:temp entries append from storage pandamium.db:players selected.entry.data.tp_history[]

tellraw @s [{"text":"vv OLDEST vv","color":"gray"}]
execute in pandamium:staff_world run function pandamium:triggers/player_info_v2/print_teleport_history_menu/loop
tellraw @s [{"text":"^^ LATEST ^^","color":"gray"}]

tellraw @s {"text":"=============================","color":"yellow"}
