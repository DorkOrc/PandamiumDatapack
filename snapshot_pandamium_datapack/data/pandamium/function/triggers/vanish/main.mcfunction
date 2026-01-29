function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": vanish ",{score:{name:"@s",objective:"vanish"}},"]"]
execute unless score @s staff_rank matches 2.. run tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"red",italic:true,text:"["},{color:"red",storage:"pandamium:temp",nbt:"username",interpret:true},": Rejected use of [vanish]]"]

execute if score @s staff_rank matches 2.. run function pandamium:triggers/vanish/logic

scoreboard players reset @s vanish
scoreboard players enable @s[predicate=pandamium:player/min_staff_perms/moderator] vanish
