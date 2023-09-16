# arguments: index, home, plain_name

scoreboard players set <duplicate> variable 1
$execute \
    unless data storage pandamium.db:players entries[$(index)].data.homes.1{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.2{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.3{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.4{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.5{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.6{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.7{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.8{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.9{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.10{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.11{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.12{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.13{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.14{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.15{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.16{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.17{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.18{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.19{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.20{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.21{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.22{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.23{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.24{plain_name:"$(plain_name)"} \
    unless data storage pandamium.db:players entries[$(index)].data.homes.25{plain_name:"$(plain_name)"} \
        run scoreboard players set <duplicate> variable 0

$data modify storage pandamium:temp end set value "$(plain_name)"
data modify storage pandamium:temp end set string storage pandamium:temp end -2
execute if data storage pandamium:temp {end:"_x"} run scoreboard players set <duplicate> variable 1
execute if data storage pandamium:temp {end:"_y"} run scoreboard players set <duplicate> variable 1
execute if data storage pandamium:temp {end:"_z"} run scoreboard players set <duplicate> variable 1
execute if data storage pandamium:temp {end:"_d"} run scoreboard players set <duplicate> variable 1

$execute if score <duplicate> variable matches 1 run tellraw @a[scores={send_extra_debug_info=1}] {"text":"[dataFixer: resolved plain home name [$(plain_name)] at index $(index)]","color":"gray","italic":true}

$execute if score <duplicate> variable matches 0 run data modify storage pandamium.db:players entries[$(index)].data.homes.$(home).plain_name set value "$(plain_name)"
$execute if score <duplicate> variable matches 1 run data modify storage pandamium.db:players entries[$(index)].data.homes.$(home).plain_name set value "$(plain_name)-$(home)"
