tellraw @a[scores={send_extra_debug_info=1..}] [{color:"gray",italic:true,text:"["},{color:"gray",selector:"@s"},": parkour.restart ",{score:{name:"@s",objective:"parkour.restart"}},"]"]

function pandamium:triggers/parkour_restart/logic

scoreboard players reset @s parkour.restart
scoreboard players enable @s parkour.restart
