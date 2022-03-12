#Particles
#scoreboard players enable @a particles
#tellraw @a[scores={particles=1..,gameplayPerms=..3}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" This command is exclusive to ","color":"green"},{"text":"donators","color":"aqua"},{"text":"! Please check ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" for information on how to become a ","color":"green"},{"text":"donator","color":"aqua"},{"text":"!","color":"green"}]
#scoreboard players set @a[scores={particles=1..,gameplayPerms=..3}] particles 0
#scoreboard players set @a[scores={particles=5..}] particles 0
#execute at @a[scores={particles=1}, gamemode=!spectator] run particle minecraft:firework ~ ~0.2 ~ 0 0 0 0 1 force
#execute at @a[scores={particles=2}, gamemode=!spectator] run particle minecraft:flame ~ ~0.2 ~ 0 0 0 0 1 force
#execute at @a[scores={particles=3}, gamemode=!spectator] run particle minecraft:happy_villager ~ ~0.2 ~ 0 0 0 0 1 force
#execute at @a[scores={particles=4}, gamemode=!spectator] run particle minecraft:witch ~ ~0.2 ~ 0 0 0 0 1 force

#topVotes trigger
#scoreboard players enable @a topVotes
#tellraw @a[scores={topVotes=1..,gameplayPerms=..3}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" This command is exclusive to ","color":"green"},{"text":"donators","color":"aqua"},{"text":"! Please check ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" for information on how to become a ","color":"green"},{"text":"donator","color":"aqua"},{"text":"!","color":"green"}]
#scoreboard players set @a[scores={topVotes=1..,gameplayPerms=..3}] topVotes 0
#execute as @a[scores={topVotes=1..}] run scoreboard objectives setdisplay sidebar votes
#execute as @a[scores={topVotes=1..}] run scoreboard players set <sidebarCountdown> variable 600
#execute as @a[scores={topVotes=1..}] run tellraw @a [{"text":"[Pandamium] ","color":"dark_blue"},{"selector":"@s"},{"text":" changed the scoreboard sidebar to display the ","color":"green"},{"text":"top voters","color":"aqua"},{"text":" for ","color":"green"},{"text":"30 seconds","color":"aqua"},{"text":"!","color":"green"}]
#scoreboard players set @a topVotes 0

#topPlaytime trigger
#scoreboard players enable @a topPlaytime
#tellraw @a[scores={topPlaytime=1..,gameplayPerms=..3}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" This command is exclusive to ","color":"green"},{"text":"donators","color":"aqua"},{"text":"! Please check ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" for information on how to become a ","color":"green"},{"text":"donator","color":"aqua"},{"text":"!","color":"green"}]
#scoreboard players set @a[scores={topPlaytime=1..,gameplayPerms=..3}] topPlaytime 0
#execute as @a[scores={topPlaytime=1..}] run execute as @a run scoreboard players operation @s playtimeHours = @s playtime
#execute as @a[scores={topPlaytime=1..}] run execute as @a run scoreboard players operation @s playtimeHours /= <ticksPerHour> variable
#execute as @a[scores={topPlaytime=1..}] run scoreboard objectives setdisplay sidebar playtimeHours
#execute as @a[scores={topPlaytime=1..}] run scoreboard players set <sidebarCountdown> variable 600
#execute as @a[scores={topPlaytime=1..}] run tellraw @a [{"text":"[Pandamium] ","color":"dark_blue"},{"selector":"@s"},{"text":" changed the scoreboard sidebar to display the ","color":"green"},{"text":"players with highest playtime","color":"aqua"},{"text":" for ","color":"green"},{"text":"30 seconds","color":"aqua"},{"text":"!","color":"green"}]
#scoreboard players set @a topPlaytime 0

#Change scoreboard back to default objective
#scoreboard players remove <sidebarCountdown> variable 1
#execute if score <sidebarCountdown> variable matches 0 run scoreboard objectives setdisplay sidebar scoreboardInfo

#Donator area
#scoreboard players enable @a donatorArea
#tellraw @a[scores={donatorArea=1..,gameplayPerms=..3}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You can't access this ","color":"green"},{"text":"special area","color":"aqua"},{"text":"! Please check ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" for information on how to become a ","color":"green"},{"text":"donator","color":"aqua"},{"text":"!","color":"green"}]
#tp @a[scores={donatorArea=1..,gameplayPerms=4}] -58 132 36
#scoreboard players set @a donatorArea 0