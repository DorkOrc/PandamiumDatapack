tellraw @a[scores={send_extra_debug_info=1..}] [{color:"gray",italic:true,text:"["},{color:"gray",selector:"@s"},": help.advancements ",{score:{name:"@s",objective:"help.advancements"}},"]"]

function pandamium:triggers/help.advancements/logic

scoreboard players reset @s help.advancements
scoreboard players enable @s help.advancements
