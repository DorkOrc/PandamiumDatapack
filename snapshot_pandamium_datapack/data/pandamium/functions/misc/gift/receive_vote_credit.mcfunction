tellraw @s [{"text":"","color":"green"},{"text":"[Gift] ","color":"blue"},{"selector":"@p[tag=running_trigger]"}," gifted you a ",{"text":"vote credit","color":"aqua"},"!"]

scoreboard players add @s vote_credits 1

execute unless entity @s[gamemode=spectator] unless score @s hidden matches 1.. anchored eyes run particle heart ^ ^ ^ 0.3 0.3 0.3 0 5
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.7
