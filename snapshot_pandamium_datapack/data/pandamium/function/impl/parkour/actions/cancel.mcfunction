scoreboard players reset @s parkour.timer_ticks
scoreboard players reset @s parkour.checkpoint
scoreboard players reset @s parkour.falls
scoreboard players reset @s parkour.has_fallen

scoreboard players reset @s parkour.quit
scoreboard players reset @s parkour.restart

function pandamium:player/teams/enable_collision

title @s actionbar ""

data remove storage pandamium:queue entries[{action:"parkour.trigger_node"}]

function pandamium:utils/database/players/load/self
execute if score <checkpoint> variable matches 300..399 run data remove storage pandamium.db.players:io selected.entry.data.parkour.course_4.current_run
function pandamium:utils/database/players/save
