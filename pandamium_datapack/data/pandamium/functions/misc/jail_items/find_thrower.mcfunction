
data modify storage pandamium:jail_items UUID set from storage pandamium:jail_items Thrower
execute store success score <uuid_does_not_match> variable run data modify storage pandamium:jail_items UUID set from entity @s UUID

execute if score <uuid_does_not_match> variable matches 0 run tag @s add thrower
execute if score <uuid_does_not_match> variable matches 0 in pandamium:staff_world run data merge block 7 64 -6 {Text2:'[{"text":"Dropped by ","color":"gray","italic":false},{"selector":"@p[tag=thrower]","color":"gray"}]'}
execute if score <uuid_does_not_match> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," ",{"selector":"@p[tag=thrower]"}," threw an item in jail! It was put into ",[{"text":"Jail Items Chest ","bold":true},{"score":{"name":"<chest_num>","objective":"variable"}}],"."]
execute if score <uuid_does_not_match> variable matches 0 run tag @s remove thrower
execute if score <uuid_does_not_match> variable matches 0 run scoreboard players set <player_exists> variable 1
