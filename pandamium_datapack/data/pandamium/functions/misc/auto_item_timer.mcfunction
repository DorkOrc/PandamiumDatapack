execute if score Entities: sidebar matches 3250..3499 if score <auto_clear> variable matches 36001.. run scoreboard players set <auto_clear> variable 36000
execute if score Entities: sidebar matches 3500..3999 if score <auto_clear> variable matches 18001.. run scoreboard players set <auto_clear> variable 18000
execute if score Entities: sidebar matches 4000.. if score <auto_clear> variable matches 6001.. run scoreboard players set <auto_clear> variable 6000

scoreboard players remove <auto_clear> variable 5
function pandamium:misc/auto_item_clear
