scoreboard players set <returned> variable 0

function pandamium:triggers/flair/logic

scoreboard players reset @s flair
scoreboard players enable @s flair

tellraw @s [{"text":"(staff-only beta)","color":"yellow"}]
