execute if entity @s[predicate=pandamium:wearing_leather_player_armor] unless entity @a[scores={transient_equippable.time_since_worn=0..1},limit=1] run function pandamium:impl/transient_equippable/every_tick

advancement revoke @s only pandamium:detect/trigger_custom_dye
