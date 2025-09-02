function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": jail ",{score:{name:"@s",objective:"jail"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes
data remove storage pandamium:local functions."pandamium:triggers/jail/*"

tag @s add source
function pandamium:triggers/jail/logic
tag @s remove source

scoreboard players reset @s jail
scoreboard players enable @s jail
