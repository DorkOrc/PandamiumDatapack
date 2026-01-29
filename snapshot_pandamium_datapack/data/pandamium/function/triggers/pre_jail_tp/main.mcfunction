function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": pre_jail_tp ",{score:{name:"@s",objective:"pre_jail_tp"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes

function pandamium:triggers/pre_jail_tp/logic

scoreboard players reset @s pre_jail_tp
scoreboard players enable @s pre_jail_tp
