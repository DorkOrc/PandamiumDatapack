execute unless score @s mail_data.inbox_cached matches 1 run return run title @s actionbar "Loading inbox..."

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": mail ",{score:{name:"@s",objective:"mail"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes
tag @s add source

execute store result score <restricted> variable run function pandamium:utils/triggers/check_forced_restriction {trigger:"mail",name:"Mail"}
execute if score <restricted> variable matches 0 run function pandamium:triggers/mail/logic

tag @s remove source
scoreboard players reset @s mail
scoreboard players enable @s mail
