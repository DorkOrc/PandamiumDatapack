scoreboard players reset @s parkour.timer_ticks
scoreboard players reset @s parkour.checkpoint
scoreboard players reset @s parkour.falls
scoreboard players reset @s parkour.has_fallen
scoreboard players reset @s parkour_quit
scoreboard players reset @s parkour_restart
function pandamium:player/teams/enable_collision
attribute @s minecraft:generic.fall_damage_multiplier base set 1

title @s actionbar ""

data remove storage pandamium:queue entries[{action:"parkour.trigger_node"}]
