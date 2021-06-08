execute unless score @s kill_all_mobs matches 1 run tellraw @s ["",{"selector":"@s"},{"translate":"chat.type.advancement.challenge"},[{"text":"[","color":"dark_purple"},{"translate":"advancements.adventure.kill_all_mobs.title","hoverEvent":{"action":"show_text","value":[{"translate":"advancements.adventure.kill_all_mobs.title","color":"dark_purple"},"\n",{"translate":"advancements.adventure.kill_all_mobs.description"}]}},"]"]]
execute unless score @s kill_all_mobs matches 1 run xp add @s 100

scoreboard players set @s kill_all_mobs 1
