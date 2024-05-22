data modify storage pandamium:queue entries append value {action:"refresh_usernames_map",meta:{do_bossbar:1b},usernames:[]}
data modify storage pandamium:queue entries[-1].usernames append from storage pandamium.db.players:data entries[].username
