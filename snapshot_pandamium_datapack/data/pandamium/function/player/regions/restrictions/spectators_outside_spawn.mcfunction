execute at @s unless dimension minecraft:the_nether unless dimension pandamium:hub in pandamium:hub run tp @s ~ ~ ~

execute at @s run function pandamium:utils/get/position

spectate

execute if score <x> variable matches ..-513 at @s run tp -512 ~ ~
execute if score <x> variable matches 513.. at @s run tp 512 ~ ~
execute if score <z> variable matches ..-513 at @s run tp ~ ~ -512
execute if score <z> variable matches 513.. at @s run tp ~ ~ 512

tellraw @s [{text:"[Private Info] ",color:"dark_red"},{text:"You may not leave spawn in spectator mode!",color:"red"}]
