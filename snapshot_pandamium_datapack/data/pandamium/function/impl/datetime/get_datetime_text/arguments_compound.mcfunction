execute store result score <year> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args.year
execute if score <year> variable matches ..1999 run scoreboard players operation <year> variable = <year> global
execute store result score <month> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args.month
execute unless score <month> variable matches 1..12 run scoreboard players operation <month> variable = <month> global
execute store result score <day> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args.day
execute unless score <day> variable matches 1..31 run scoreboard players operation <day> variable = <day> global
execute store result score <hour> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args.hour
execute unless score <hour> variable matches 0..23 run scoreboard players set <hour> variable 0
execute store result score <minute> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args.minute
execute unless score <minute> variable matches 0..59 run scoreboard players set <minute> variable 0
execute store result score <second> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args.second
execute unless score <second> variable matches 0..59 run scoreboard players set <second> variable 0

return 1
