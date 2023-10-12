scoreboard players set <total> variable 0
execute in pandamium:staff_world positioned 8.0 0.0 8.0 summon armor_stand run function pandamium:impl/item_clear/regular/as_new_armour_stand
tellraw @a[scores={send_extra_debug_info=1..}] [{"text":"[Server: Cleared ","color":"gray","italic":true},{"score":{"name":"<total>","objective":"variable"}}," item entities]"]
title @a actionbar {"text":"Non-valuable dropped items were cleared","color":"aqua","bold":true}
