execute unless score @s parkour.checkpoint matches 0.. run return 0

data remove storage pandamium:queue entries[{action:"parkour.trigger_node"}]

scoreboard players set <parkour.allow_teleport> variable 1
function pandamium:impl/parkour/parkour_3/tp_to_start_without_feedback
scoreboard players set <parkour.allow_teleport> variable 0

scoreboard players set @s parkour.checkpoint 200
scoreboard players set @s parkour.timer_ticks 0
scoreboard players set @s parkour.falls 0

return 1
