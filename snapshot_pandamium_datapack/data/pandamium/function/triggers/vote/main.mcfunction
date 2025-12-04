function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": vote ",{score:{name:"@s",objective:"vote"}},"]"]

tag @s add source

execute unless predicate pandamium:player/min_staff_perms/helper run scoreboard players set @s vote 1

execute if score @s vote matches 2.. run scoreboard players operation <target_id> variable = @s vote
execute if score @s vote matches 2.. as @a if score @s id = <target_id> variable run function pandamium:triggers/vote/print_target_votes

execute if score @s vote matches 1 run function pandamium:triggers/vote/print_links_menu

tag @a remove target
tag @s remove source
scoreboard players reset @s vote
scoreboard players enable @s vote
