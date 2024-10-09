data modify storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls set from storage pandamium.db.players:io selected.entry.data.parkour.course_4.current_run

execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls.time int 1 run scoreboard players operation @s parkour_4.fewest_falls.time = @s parkour.timer_ticks
execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.fewest_falls.falls int 1 run scoreboard players operation @s parkour_4.fewest_falls.falls = @s parkour.falls
