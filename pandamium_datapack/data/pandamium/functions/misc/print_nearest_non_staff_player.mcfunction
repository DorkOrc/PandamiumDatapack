tag @a[scores={staff_perms=1..}] add staff
execute at @s if entity @p[tag=!staff] run tellraw @s [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," The nearest non-staff player is ",{"selector":"@p[tag=!staff]"}," (",{"score":{"name":"@p[tag=!staff]","objective":"id"},"bold":true},")."]
execute at @s unless entity @p[tag=!staff] run tellraw @s [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," There are no non-staff players online."]
tag @a[tag=staff] remove staff
