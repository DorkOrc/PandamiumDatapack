execute at @s unless dimension minecraft:the_nether unless dimension pandamium:hub in pandamium:hub run tp @s ~ ~ ~
spectate
function pandamium:misc/clamp_entity_position_inside_hub_map

tellraw @s [{text:"[Private Info] ",color:"dark_red"},{text:"You may not leave spawn in spectator mode!",color:"red"}]
