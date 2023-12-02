kill @e[type=end_crystal,tag=dragon_fight]
scoreboard players reset <dragon_fight> global
scoreboard players reset <dragon_fight_spawned_reinforcements> global

fill 1 62 2 -1 62 -2 glass replace air
fill -2 62 -1 2 62 1 glass replace air

function pandamium:impl/dragon_fight/loop_entities
