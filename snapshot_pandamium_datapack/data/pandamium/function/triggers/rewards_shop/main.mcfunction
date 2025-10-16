function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": rewards_shop ",{score:{name:"@s",objective:"rewards_shop"}},"]"]

data modify storage pandamium:local functions."pandamium:trggiers/rewards_shop/buy/*" set value {}
function pandamium:triggers/rewards_shop/logic

scoreboard players reset @s rewards_shop
scoreboard players enable @s rewards_shop
