kill

execute unless score <tp_d> variable matches -1 unless score <tp_d> variable matches 1..2 in overworld run function pandamium:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches -1 in the_nether run function pandamium:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 1 in the_end run function pandamium:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 2 in pandamium:staff_world run function pandamium:misc/teleport/to_scores/teleport
