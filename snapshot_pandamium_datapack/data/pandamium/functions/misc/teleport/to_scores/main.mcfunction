# Due to a MC bug with detecting hitboxes with 0 size, cannot target a marker entity with [distance=0]
tag @s add teleport.to_scores.player
execute in pandamium:staff_world positioned 0. 0 0. summon marker run function pandamium:misc/teleport/to_scores/select_dimension
tag @s remove teleport.to_scores.player
