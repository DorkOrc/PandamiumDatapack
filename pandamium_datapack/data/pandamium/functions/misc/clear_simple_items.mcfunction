execute as @e[type=item,nbt={"Item":{"id":"minecraft:stone"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:cobblestone"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:dirt"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:grass_block"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:andesite"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:diorite"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:granite"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:sand"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:sandstone"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:kelp"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:netherrack"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:crimson_nylium"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:warped_nylium"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:rotten_flesh"}}] unless data entity @s Item.tag run kill @s
execute as @e[type=item,nbt={"Item":{"id":"minecraft:ender_pearl"}}] unless data entity @s Item.tag run kill @s
kill @e[type=#minecraft:arrows,nbt={inGround:1b}]
