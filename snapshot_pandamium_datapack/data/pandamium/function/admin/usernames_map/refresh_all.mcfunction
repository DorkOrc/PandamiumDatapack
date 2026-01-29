function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},': admin usernames_map/refresh_all]']

data modify storage pandamium:queue entries append value {action:"refresh_usernames_map",meta:{do_bossbar:1b},usernames:[]}
data modify storage pandamium:queue entries[-1].usernames append from storage pandamium.db.players:data entries[].username

tellraw @s [{text:"[admin]",color:"dark_green"},{text:" Queued refreshing of usernames map!",color:"green"}]
