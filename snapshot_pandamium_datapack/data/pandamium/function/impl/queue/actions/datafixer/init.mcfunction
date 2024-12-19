data modify storage pandamium:queue selected.entry.meta.name set value '{"text":"Data Fixer","color":"yellow"}'
data remove storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*"

execute as @a[scores={particles_data.damage.type=1..}] run scoreboard players operation @s particles_data.damage_effect.type = @s particles_data.damage.type

data modify storage pandamium:queue selected.entry.user_ids append from storage pandamium.db.players:data entries[{data:{particles:{damage:{}}}}].id
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.user_ids[]
