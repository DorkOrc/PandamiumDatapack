execute unless entity @s[scores={wither_timer=-1..}] store result score @s wither_timer run data get entity @s Invul
execute if entity @s[scores={wither_timer=0..}] run function pandamium:misc/wither/update_wither_timer
