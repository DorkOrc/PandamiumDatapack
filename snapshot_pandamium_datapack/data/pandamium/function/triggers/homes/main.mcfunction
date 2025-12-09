function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": homes ",{score:{name:"@s",objective:"homes"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes
data modify storage pandamium:temp arguments set value {}

function pandamium:triggers/homes/logic

execute unless score @s homes matches ..-1 run scoreboard players reset @s homes
execute if score @s homes matches ..-1 run scoreboard players set @s homes 1
scoreboard players enable @s homes
