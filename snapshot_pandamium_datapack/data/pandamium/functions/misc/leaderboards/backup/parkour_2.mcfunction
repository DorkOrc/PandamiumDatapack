data merge storage pandamium:leaderboards {backups:{parkour_2:{date:[I;0,0,0,0]}}}
data modify storage pandamium:leaderboards backups.parkour_2.contents set from storage pandamium:leaderboards parkour_2
execute store result storage pandamium:leaderboards backups.parkour_2.date[0] int 1 run scoreboard players get <year> global
execute store result storage pandamium:leaderboards backups.parkour_2.date[1] int 1 run scoreboard players get <month> global
execute store result storage pandamium:leaderboards backups.parkour_2.date[2] int 1 run scoreboard players get <day> global
execute store result storage pandamium:leaderboards backups.parkour_2.date[3] int 1 run scoreboard players get <hour> global
