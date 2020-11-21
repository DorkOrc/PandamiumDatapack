tellraw @a [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," ",{"selector":"@s","color":"gray"}," (",{"score":{"name":"@s","objective":"id"},"bold":true},") was kicked by ",{"selector":"@p[tag=running_trigger]","color":"gray"},"!"]

tag @s add getting_kicked
kick @p[tag=getting_kicked] You were kicked by a staff member!
tag @s remove getting_kicked
