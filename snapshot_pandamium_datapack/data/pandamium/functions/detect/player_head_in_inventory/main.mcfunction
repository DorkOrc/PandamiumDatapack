execute if entity @s[advancements={pandamium:pandamium/mob_heads/obtain_mob_head=false}] if data entity @s Inventory[{id:"minecraft:player_head",components:{"minecraft:custom_data":{pandamium:{id:"mob_head"}}}}] run advancement grant @s only pandamium:pandamium/mob_heads/obtain_mob_head

advancement revoke @s only pandamium:detect/player_head_in_inventory
