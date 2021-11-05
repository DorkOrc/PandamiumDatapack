scoreboard players set @s parkour_checkpoint 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2

scoreboard players enable @s parkour
scoreboard players enable @s parkour.end
tellraw @s [{"text":"[Parkour] You started the parkour!","color":"aqua"},[{"text":"\n• If you cheat, you will quit the parkour. ","color":"dark_aqua"},{"text":"Hover your mouse here to see what counts as cheating.","hoverEvent":{"action":"show_text","value":"• Using an elytra\n• Using an ender pearl\n• Consuming a chorus fruit\n• Having the Speed or Jump Boost effects\n• Teleporting using a trigger\n• Leaving spawn"}},"\n• If you get stuck, run ",{"text":"/trigger parkour","color":"aqua"}," to return to your last checkpoint.\n• To quit the parkour course, run ",{"text":"/trigger parkour.end","color":"aqua"}," ",{"text":"(stops tracking time and resets checkpoints)","color":"gray"}]]
execute if score @s parkour_best_time matches 1.. run function pandamium:misc/map_specific/parkour/print_best_time
