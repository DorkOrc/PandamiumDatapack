tag @s add source
scoreboard players set <returned> variable 0

function pandamium:triggers/sign_font/logic

tag @s remove source
scoreboard players reset @s sign_font
scoreboard players enable @s sign_font
