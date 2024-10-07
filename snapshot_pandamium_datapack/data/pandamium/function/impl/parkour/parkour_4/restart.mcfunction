execute unless score @s parkour.checkpoint matches 0.. run return 0

data remove storage pandamium:queue entries[{action:"parkour.trigger_node"}]

scoreboard players set <parkour.allow_teleport> variable 1
function pandamium:impl/parkour/parkour_4/tp_to_start_without_feedback
scoreboard players set <parkour.allow_teleport> variable 0

scoreboard players set @s parkour.checkpoint 300
scoreboard players set @s parkour.timer_ticks 0
scoreboard players set @s parkour.falls 0

function pandamium:utils/database/players/load/self
execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.attempts int 1 run scoreboard players add @s parkour_4.attempts 1
data remove storage pandamium.db.players:io selected.entry.data.parkour.course_4.current_run
function pandamium:utils/database/players/save

return 1
