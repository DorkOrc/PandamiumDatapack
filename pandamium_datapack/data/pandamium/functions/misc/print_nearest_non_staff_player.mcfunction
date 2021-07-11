tag @a[scores={staff_perms=1..}] add staff
execute at @s if entity @p[tag=!staff] run tellraw @s [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," The nearest non-staff player is ",{"selector":"@p[tag=!staff]","color":"gray"}," (",{"score":{"name":"@p[tag=!staff]","objective":"id"},"bold":true},")."]
execute unless entity @p[tag=!staff] run tellraw @s [{"text":"[Info]","color":"dark_gray"},{"text":" There are no non-staff players online.","color":"gray"}]
tag @a remove staff
