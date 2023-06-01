kill @e[type=end_crystal,tag=dragon_fight]
scoreboard players reset <dragon_fight> global
scoreboard players reset <dragon_fight_spawned_reinforcements> global

function pandamium:impl/dragon_fight/loop_entities
