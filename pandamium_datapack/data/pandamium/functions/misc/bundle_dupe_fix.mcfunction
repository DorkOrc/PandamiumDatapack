tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," ",{"selector":"@p","color":"gray"}," was jailed for ",{"text":"bundle duping","bold":true},"."]
scoreboard players set @p jailed 1
scoreboard players set @p cheater 1
data modify entity @s Item.Count set value 1b
