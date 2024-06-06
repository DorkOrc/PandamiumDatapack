data modify storage pandamium:queue entries append value {action:"refresh_usernames_map",meta:{do_bossbar:1b},usernames:[]}
data modify storage pandamium:queue entries[-1].usernames append from storage pandamium.db.players:data entries[].username

tellraw @s [{"text":"[admin]","color":"dark_green"},{"text":" Queued refreshing of usernames map!","color":"green"}]
