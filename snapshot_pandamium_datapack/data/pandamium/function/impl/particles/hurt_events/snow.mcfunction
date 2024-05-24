particle minecraft:block{block_state:{Name:"minecraft:ice"}} ~ ~1 ~ 0 0.5 0 0.5 2
execute if score @s detect.take_damage matches 100.. run particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0 3
execute if score @s detect.take_damage matches 100.. run playsound entity.player.hurt_freeze player @a[distance=..16] ~ ~ ~ 0.25 2
