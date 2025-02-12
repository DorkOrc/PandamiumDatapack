schedule clear pandamium:impl/dragon_fight/loop_dragon

execute in the_end run kill @e[type=marker,tag=dragon_fight.dragon_marker,x=0]
execute in the_end at @e[type=end_crystal,tag=dragon_fight,x=0] run function pandamium:misc/fake_explosion
execute in the_end as @e[type=end_crystal,tag=dragon_fight,x=0] run function pandamium:utils/kill_entity_stack_discretely
scoreboard players reset <dragon_fight> global
scoreboard players reset <dragon_fight_spawned_reinforcements> global

function pandamium:impl/dragon_fight/wait_for_portal_blocks
