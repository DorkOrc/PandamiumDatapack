# arguments: type

$execute unless data storage pandamium:leaderboards $(type) run return 0

$data modify storage pandamium:leaderboards backups.$(type) set value {date:[I;0,0,0,0]}
$data modify storage pandamium:leaderboards backups.$(type) merge from storage pandamium:leaderboards $(type)
$execute store result storage pandamium:leaderboards backups.$(type).date[0] int 1 run scoreboard players get <year> global
$execute store result storage pandamium:leaderboards backups.$(type).date[1] int 1 run scoreboard players get <month> global
$execute store result storage pandamium:leaderboards backups.$(type).date[2] int 1 run scoreboard players get <day> global
$execute store result storage pandamium:leaderboards backups.$(type).date[3] int 1 run scoreboard players get <hour> global

return 1
