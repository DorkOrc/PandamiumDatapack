data modify storage pandamium:temp entries set value []
data modify storage pandamium:temp entries append from storage pandamium.db:cache online_players[]

execute if data storage pandamium:temp entries[0] run function pandamium:impl/database/cache/every_tick/loop
