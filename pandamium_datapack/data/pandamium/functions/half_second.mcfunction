# Will now only run on_join once per join.
# this could also be used to detect new players
# It only runs on players who have never logged off of the server
execute as @a[scores={playtime_ticks=15..}] unless score @s leave_count matches 1.. run function pandamium:on_join
# Update old players triggers and scores
execute as @a[scores={leave_count=1..}] run function pandamium:on_join

function pandamium:loop_triggers

kill @e[type=minecraft:tnt]

# Reshedule the tick
schedule function pandamium:half_second 10t