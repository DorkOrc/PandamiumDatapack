execute store result score <total> variable run kill @e[type=item,predicate=pandamium:contents_slot/item_clear/simple,nbt=!{Item:{components:{}}}]
tellraw @a[scores={send_extra_debug_info=1..}] [{"text":"[Pandamium: Cleared ","color":"gray","italic":true},{"score":{"name":"<total>","objective":"variable"}}," item entities]"]

kill @e[type=#arrows,nbt={inGround:1b}]
kill @e[type=#arrows,predicate=pandamium:in_spawn]
