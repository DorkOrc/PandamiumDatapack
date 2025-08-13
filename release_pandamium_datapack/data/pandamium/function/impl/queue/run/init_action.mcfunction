# arguments: action

# store initial values
data modify storage pandamium:queue selected.entry.meta merge value {init:1b,max:1,value:0}
$execute unless data storage pandamium:queue selected.entry.meta.name run data modify storage pandamium:queue selected.entry.meta.name set value '"$(action)"'
execute unless data storage pandamium:queue selected.entry.meta.status run data modify storage pandamium:queue selected.entry.meta.status set value '""'
execute unless data storage pandamium:queue selected.entry.meta{bossbar_color:"blue"} unless data storage pandamium:queue selected.entry.meta{bossbar_color:"green"} unless data storage pandamium:queue selected.entry.meta{bossbar_color:"pink"} unless data storage pandamium:queue selected.entry.meta{bossbar_color:"purple"} unless data storage pandamium:queue selected.entry.meta{bossbar_color:"red"} unless data storage pandamium:queue selected.entry.meta{bossbar_color:"white"} unless data storage pandamium:queue selected.entry.meta{bossbar_color:"yellow"} run data modify storage pandamium:queue selected.entry.meta.bossbar_color set value "green"

# run __init__
$function pandamium:impl/queue/actions/$(action)/init with storage pandamium:queue selected.entry

## bossbar stuff

# resolve bossbar name and status
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '""'
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set from storage pandamium:queue selected.entry.meta.name
execute in pandamium:staff_world run data modify storage pandamium:queue selected.entry.meta.name set from block 3 0 0 front_text.messages[0]
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '""'
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set from storage pandamium:queue selected.entry.meta.status
execute in pandamium:staff_world run data modify storage pandamium:queue selected.entry.meta.status set from block 3 0 0 front_text.messages[0]

# resolve integer players input
execute store result storage pandamium:temp value int 1 run data get storage pandamium:queue selected.entry.meta.players
execute store success score <different> variable run data modify storage pandamium:temp value set from storage pandamium:queue selected.entry.meta.players
execute if score <different> variable matches 0 run function pandamium:impl/queue/run/set_bossbar_players_from_int with storage pandamium:queue selected.entry.meta

# generate unique bossbar
execute unless data storage pandamium:queue selected.entry.meta{do_bossbar:1b} run return 0
execute in pandamium:staff_world positioned 0. 0 0. summon area_effect_cloud run data modify storage pandamium:templates bossbar_init.uuid set from entity @s UUID
data modify storage pandamium:templates bossbar_init.uuid0 set from storage pandamium:templates bossbar_init.uuid[0]
data modify storage pandamium:templates bossbar_init.uuid1 set from storage pandamium:templates bossbar_init.uuid[1]
data modify storage pandamium:templates bossbar_init.uuid2 set from storage pandamium:templates bossbar_init.uuid[2]
data modify storage pandamium:templates bossbar_init.uuid3 set from storage pandamium:templates bossbar_init.uuid[3]
data modify storage pandamium:templates bossbar_init.action set from storage pandamium:queue selected.entry.action
data modify storage pandamium:templates bossbar_init.name set from storage pandamium:queue selected.entry.meta.name
function pandamium:impl/queue/run/init_bossbar with storage pandamium:templates bossbar_init

# validate players selector, and show to players
scoreboard players set <valid_selector> variable 0
function pandamium:impl/queue/run/set_bossbar_players with storage pandamium:queue selected.entry.meta
execute if score <valid_selector> variable matches 0 run data modify storage pandamium:queue selected.entry.meta.players set value "@a[scores={send_extra_debug_info=1..}]"
function pandamium:impl/queue/run/set_bossbar_players with storage pandamium:queue selected.entry.meta
