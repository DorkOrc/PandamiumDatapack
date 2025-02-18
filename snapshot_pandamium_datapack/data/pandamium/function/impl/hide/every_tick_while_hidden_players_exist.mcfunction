execute at @a[scores={hidden=1..}] as @e[type=item,tag=!pandamium.monitoring_pickup,distance=..10] run function pandamium:impl/hide/start_monitoring_item_entity

execute if entity @a[scores={hidden=1..},limit=1] run schedule function pandamium:impl/hide/every_tick_while_hidden_players_exist 1t
