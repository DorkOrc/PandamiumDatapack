data merge storage pandamium:leaderboards {backups:{monthly_votes:{date:[I;0,0,0,0]}}}
data modify storage pandamium:leaderboards backups.monthly_votes.contents set from storage pandamium:leaderboards monthly_votes
execute store result storage pandamium:leaderboards backups.monthly_votes.date[0] int 1 run scoreboard players get <year> global
execute store result storage pandamium:leaderboards backups.monthly_votes.date[1] int 1 run scoreboard players get <month> global
execute store result storage pandamium:leaderboards backups.monthly_votes.date[2] int 1 run scoreboard players get <day> global
execute store result storage pandamium:leaderboards backups.monthly_votes.date[3] int 1 run scoreboard players get <hour> global
