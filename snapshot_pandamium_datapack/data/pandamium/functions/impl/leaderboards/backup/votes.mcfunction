data merge storage pandamium:leaderboards {backups:{votes:{date:[I;0,0,0,0]}}}
data modify storage pandamium:leaderboards backups.votes.contents set from storage pandamium:leaderboards votes
execute store result storage pandamium:leaderboards backups.votes.date[0] int 1 run scoreboard players get <year> global
execute store result storage pandamium:leaderboards backups.votes.date[1] int 1 run scoreboard players get <month> global
execute store result storage pandamium:leaderboards backups.votes.date[2] int 1 run scoreboard players get <day> global
execute store result storage pandamium:leaderboards backups.votes.date[3] int 1 run scoreboard players get <hour> global
