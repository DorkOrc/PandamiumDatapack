tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger flair"}},{"text":"[Rewards]","color":"blue"}," You placed in the ",{"text":"top 10","color":"aqua"}," for a monthly leaderboard in November so you have been rewarded between 25 and 50 reward credits and ",{"text":"access to flairs","color":"aqua"},"! Try them out by running ",{"text":"/trigger ","color":"gray"},{"text":"flair","color":"aqua"},"."]
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
