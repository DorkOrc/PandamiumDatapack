function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": rtp ",{score:{name:"@s",objective:"rtp"}},"]"]

execute store result score <restricted> variable run function pandamium:utils/triggers/check_forced_restriction {trigger:"rtp",name:"RTP"}
execute if score <restricted> variable matches 0 run function pandamium:triggers/rtp/logic

scoreboard players reset @s rtp
scoreboard players enable @s rtp
