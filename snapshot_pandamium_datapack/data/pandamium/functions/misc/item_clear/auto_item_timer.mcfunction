execute if score <mob_count> variable matches 3250..3499 if score <auto_clear> global matches 36001.. run scoreboard players set <auto_clear> global 36000
execute if score <mob_count> variable matches 3500..3999 if score <auto_clear> global matches 18001.. run scoreboard players set <auto_clear> global 18000
execute if score <mob_count> variable matches 4000.. if score <auto_clear> global matches 6001.. run scoreboard players set <auto_clear> global 6000

scoreboard players remove <auto_clear> global 5
function pandamium:misc/auto_item_clear
