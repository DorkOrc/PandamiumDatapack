tellraw @a[scores={send_extra_debug_info=1..}] [{color:"gray",italic:true,text:"["},{color:"gray",selector:"@s"},": support-pandamium ",{score:{name:"@s",objective:"support-pandamium"}},"]"]

function pandamium:triggers/support-pandamium/logic

scoreboard players reset @s support-pandamium
scoreboard players enable @s support-pandamium
