scoreboard players operation <rank_credits> variable = @s playtime_ticks
scoreboard players operation <rank_credits> variable /= #72000 constant
return run scoreboard players operation <rank_credits> variable < @s votes
