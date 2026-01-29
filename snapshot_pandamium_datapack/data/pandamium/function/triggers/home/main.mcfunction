function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": home ",{score:{name:"@s",objective:"home"}},"]"]

execute store result score <restricted> variable run function pandamium:utils/triggers/check_forced_restriction {trigger:"home",name:"Homes"}
execute if score <restricted> variable matches 0 run function pandamium:triggers/home/logic

scoreboard players reset @s home
scoreboard players enable @s home
