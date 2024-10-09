data modify storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time set from storage pandamium.db.players:io selected.entry.data.parkour.course_4.current_run

execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time.time int 1 run scoreboard players operation @s parkour_4.shortest_time.time = @s parkour.timer_ticks
execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.shortest_time.falls int 1 run scoreboard players operation @s parkour_4.shortest_time.falls = @s parkour.falls
