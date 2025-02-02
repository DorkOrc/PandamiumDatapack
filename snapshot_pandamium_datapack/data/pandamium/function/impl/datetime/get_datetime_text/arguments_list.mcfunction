execute store result score <year> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args[0]
execute if score <year> variable matches ..1999 run scoreboard players set <year> variable 2000
execute store result score <month> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args[1]
execute unless score <month> variable matches 1..12 run scoreboard players set <month> variable 1
execute store result score <day> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args[2]
execute unless score <day> variable matches 1..31 run scoreboard players set <day> variable 1
execute store result score <hour> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args[3]
execute unless score <hour> variable matches 0..23 run scoreboard players set <hour> variable 0
execute store result score <minute> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args[4]
execute unless score <minute> variable matches 0..59 run scoreboard players set <minute> variable 0
execute store result score <second> variable run data get storage pandamium:local functions."pandamium:utils/datetime/get_datetime_text".args[5]
execute unless score <second> variable matches 0..59 run scoreboard players set <second> variable 0

return 1
