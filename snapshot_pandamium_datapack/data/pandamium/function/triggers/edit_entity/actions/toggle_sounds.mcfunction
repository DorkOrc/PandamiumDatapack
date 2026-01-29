execute if score <belongs_to_another_player> variable matches 1 run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob belongs to another player."}]

execute if entity @s[type=#pandamium:edit_entity/cannot_be_silenced] run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob does not make any sound."}]

execute store success score <silent> variable store success entity @s Silent byte 1 unless data entity @s {Silent:true}
execute if score <silent> variable matches 0 run data remove entity @s data.forced_silent.by
execute if score <silent> variable matches 1 run data modify entity @s data.forced_silent.by set from entity @a[limit=1,tag=edit_entity.player] UUID
