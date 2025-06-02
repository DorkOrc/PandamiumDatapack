function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": inspect_container ",{score:{name:"@s",objective:"inspect_container"}},"]"]

scoreboard players set <returned> variable 0
tag @s add source

execute if score @s inspect_container matches 1.. at @s run function pandamium:triggers/inspect_container/run_positive_input
execute if score @s inspect_container matches ..-1 at @s run function pandamium:triggers/inspect_container/run_negative_input

tag @a remove target
tag @s remove source
scoreboard players reset @s inspect_container
scoreboard players enable @s inspect_container
