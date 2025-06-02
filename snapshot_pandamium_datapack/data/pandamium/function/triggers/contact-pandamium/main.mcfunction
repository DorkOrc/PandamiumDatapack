tellraw @a[scores={send_extra_debug_info=1..}] [{color:"gray",italic:true,text:"["},{color:"gray",selector:"@s"},": contact-pandamium ",{score:{name:"@s",objective:"contact-pandamium"}},"]"]

function pandamium:triggers/contact-pandamium/logic

scoreboard players reset @s contact-pandamium
scoreboard players enable @s contact-pandamium
