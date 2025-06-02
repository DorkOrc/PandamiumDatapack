function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},': admin refresh_leader_board/group/yearly]']

execute if data storage pandamium:queue entries[{action:"leader_boards.update_places"}] run tellraw @s [{color:"dark_red",text:"[admin]"},{text:" A leader board refresh is already taking place!",color:"red"}]
execute if data storage pandamium:queue entries[{action:"leader_boards.update_places"}] run return fail

data modify storage pandamium:queue entries append value {action:"leader_boards.update_places",type:"yearly_playtime",meta:{do_bossbar:1b}}
data modify storage pandamium:queue entries append value {action:"leader_boards.update_places",type:"yearly_votes",meta:{do_bossbar:1b}}

tellraw @s [{color:"dark_green",text:"[admin]"},[{color:"green",text:" Queued refreshing leader boards: "},[{color:"aqua",text:"["},{storage:"pandamium:queue",nbt:"entries[{action:'leader_boards.update_places'}].type",separator:["]",{color:"green",text:", "},"["]},"]"],"."]]
