execute if score @s item_frame matches 1 run tellraw @s [{"text":"           [Item Frame] ","color":"dark_green"},{"text": "\n     [Invisible]     ","color": "green","hoverEvent":{"action":"show_text","value":{"text":"Turn the nearest item frame invisible(Must have an item in it)","color": "aqua"}},"clickEvent": {"action":"run_command","value":"/trigger item_frame set 2"}},{"text": "[Reset]","color": "red","hoverEvent":{"action":"show_text","value":{"text":"Turn the nearest item frame visible again","color": "aqua"}},"clickEvent": {"action":"run_command","value":"/trigger item_frame set 3"}}]

execute if score @s item_frame matches 2 run tag @e[type=item_frame,sort=nearest,distance=..10,limit=1,nbt={Item:{Count:1b}}] add can_be_invisible
tag @e[type=item_frame,sort=nearest,distance=..10,limit=1,nbt=!{Item:{Count:1b}}] remove can_be_invisible
execute if score @s item_frame matches 2 run data merge entity @e[sort=nearest,distance=..10,limit=1,tag=can_be_invisible] {Invisible:1b,Invulnerable:1b}
execute if score @s item_frame matches 3 run data merge entity @e[type=item_frame,sort=nearest,limit=1,tag=can_be_invisible] {Invisible:0b,Invulnerable:0b}
scoreboard players reset @s item_frame
scoreboard players enable @s item_frame
