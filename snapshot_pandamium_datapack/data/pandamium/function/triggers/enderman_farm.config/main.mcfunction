tellraw @a[scores={send_extra_debug_info=1..}] [{color:"gray",italic:true,text:"["},{color:"gray",selector:"@s"},": enderman_farm.config ",{score:{name:"@s",objective:"enderman_farm.config"}},"]"]

function pandamium:triggers/enderman_farm.config/logic

scoreboard players reset @s enderman_farm.config
scoreboard players enable @s enderman_farm.config
