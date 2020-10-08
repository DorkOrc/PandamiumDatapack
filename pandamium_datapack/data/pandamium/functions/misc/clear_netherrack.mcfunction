execute as @e[type=item,nbt={"Item":{"id":"minecraft:netherrack"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:ender_pearl"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:rotten_flesh"}}] unless data entity @s Item.tag run kill @s

schedule function pandamium:misc/clear_netherrack 10s
