function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},': admin refresh_leader_board/cancel]']

execute unless data storage pandamium:queue entries[{action:"leader_boards.update_places"}] run tellraw @s [{color:"dark_red",text:"[admin]"},{color:"red",text:" No leader board refreshes are taking place!"}]
execute unless data storage pandamium:queue entries[{action:"leader_boards.update_places"}] run return fail

data modify storage pandamium:queue entries[{action:"leader_boards.update_places"}].meta.cancel set value 1b

tellraw @s [{color:"dark_green",text:"[admin]"},[{color:"green",text:" Cancelled all refreshing leader boards: "},[{color:"aqua",text:"["},{storage:"pandamium:queue",nbt:"entries[{action:'leader_boards.update_places'}].type",interpret:true,separator:["]",{color:"green",text:", "},"["]},"]"],"."]]
