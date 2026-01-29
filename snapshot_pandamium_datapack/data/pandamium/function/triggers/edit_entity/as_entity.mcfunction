scoreboard players set <entity_loaded> variable 1
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.4 0.3 0 10
execute at @s anchored eyes run particle minecraft:happy_villager ^ ^ ^ 0.3 0.4 0.3 0 10

execute if entity @s[predicate=pandamium:in_spawn] run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! Mobs inside of the spawn area cannot be edited."}]

# determine ownership
execute store success score <has_owner> variable store success score <belongs_to_another_player> variable if data entity @s Owner
execute if score <belongs_to_another_player> variable matches 1 on owner if entity @s[tag=edit_entity.player] run scoreboard players set <belongs_to_another_player> variable 0

## Actions
# toggle sounds
execute if score <operation> variable matches 1 run return run function pandamium:triggers/edit_entity/actions/toggle_sounds
# set custom name to "#"
execute if score <operation> variable matches 3 run return run function pandamium:triggers/edit_entity/actions/set_custom_name_to_edit_key
# mount
#execute if score <operation> variable matches 4 run return run function pandamium:triggers/edit_entity/actions/mount
# remove custom name
execute if score <operation> variable matches 5 run return run function pandamium:triggers/edit_entity/actions/remove_custom_name
# toggle forced custom name
execute if score <operation> variable matches 6 run return run function pandamium:triggers/edit_entity/actions/toggle_forced_custom_name

# else
tellraw @s {color:"red",text:"Invalid operation"}
scoreboard players set <operation> variable 0
