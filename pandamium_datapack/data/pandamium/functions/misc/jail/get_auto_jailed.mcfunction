tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," was automatically jailed for ",{"nbt":"reason","storage":"pandamium:jail","bold":true},"!"]
tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},"'s id is ",{"score":{"objective":"id","name":"@s"},"bold":true},"."]
playsound entity.experience_orb.pickup player @a[scores={staff_perms=1..}] ~ ~ ~ 1 2 1

tellraw @s [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},"You were automatically jailed for ",{"nbt":"reason","storage":"pandamium:jail","bold":true},"!"]

function pandamium:misc/get_jailed
scoreboard players set @s jailed 2
scoreboard players set @s cheater 1
