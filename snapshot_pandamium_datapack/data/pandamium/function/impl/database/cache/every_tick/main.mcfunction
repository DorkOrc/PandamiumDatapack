# copy entries
data modify storage pandamium:temp entries set value []
data modify storage pandamium:temp entries set from storage pandamium:cache online_players

# Prevent player death invisibility exploit
# @a selects all players, @e[type=player] only alive ones
scoreboard players set @a temp_1 0
scoreboard players set @e[type=player] temp_1 1

# loop entries
execute if data storage pandamium:temp entries[0] run function pandamium:impl/database/cache/every_tick/loop
