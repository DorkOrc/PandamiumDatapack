#it's possible for the score to decrease without the Invul timer decreasing, so it needs to be updated
execute if entity @s[scores={wither_timer=0..1}] store result score @s wither_timer run data get entity @s Invul
execute if entity @s[scores={wither_timer=1}] run data modify entity @s Silent set value 1b
execute if entity @s[scores={wither_timer=0}] run data remove entity @s Silent
scoreboard players remove @s wither_timer 1
