data merge storage pandamium:leaderboards {backups:{parkour_1:{date:[I;0,0,0,0]}}}
data modify storage pandamium:leaderboards backups.parkour_1.contents set from storage pandamium:leaderboards parkour_1
execute store result storage pandamium:leaderboards backups.parkour_1.date[0] int 1 run scoreboard players get <year> global
execute store result storage pandamium:leaderboards backups.parkour_1.date[1] int 1 run scoreboard players get <month> global
execute store result storage pandamium:leaderboards backups.parkour_1.date[2] int 1 run scoreboard players get <day> global
execute store result storage pandamium:leaderboards backups.parkour_1.date[3] int 1 run scoreboard players get <hour> global
