data merge storage pandamium:leaderboards {backups:{playtime:{date:[I;0,0,0,0]}}}
data modify storage pandamium:leaderboards backups.playtime.contents set from storage pandamium:leaderboards playtime
execute store result storage pandamium:leaderboards backups.playtime.date[0] int 1 run scoreboard players get <year> global
execute store result storage pandamium:leaderboards backups.playtime.date[1] int 1 run scoreboard players get <month> global
execute store result storage pandamium:leaderboards backups.playtime.date[2] int 1 run scoreboard players get <day> global
execute store result storage pandamium:leaderboards backups.playtime.date[3] int 1 run scoreboard players get <hour> global
