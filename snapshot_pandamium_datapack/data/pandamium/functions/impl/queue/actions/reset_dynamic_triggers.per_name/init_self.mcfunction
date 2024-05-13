data modify storage pandamium:queue entries append value {action:"reset_dynamic_triggers.per_name",target:"_",names:[],meta:{do_bossbar:0b}}
execute store result storage pandamium:queue entries[-1].meta.players int 1 run scoreboard players get @s id

function pandamium:utils/get/username
data modify storage pandamium:queue entries[-1].target set from storage pandamium:temp username

data modify storage pandamium:queue entries[-1].names append from storage pandamium:cache online_players[].username
