scoreboard players reset @s parkour_end

scoreboard players reset @s parkour_checkpoint
scoreboard players reset @s parkour.timer_ticks

title @s actionbar ""
tellraw @s [{"text":"[Parkour]","color":"dark_red"},{"text":" Ended parkour!","color":"red"}]

