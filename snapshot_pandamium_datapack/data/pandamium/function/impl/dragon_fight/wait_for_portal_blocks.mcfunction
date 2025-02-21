execute in the_end unless loaded 1 61 0 run return run schedule function pandamium:impl/dragon_fight/wait_for_portal_blocks 1t
execute in the_end unless block 1 61 0 minecraft:end_portal run return run schedule function pandamium:impl/dragon_fight/wait_for_portal_blocks 1t

execute in the_end run fill 1 62 2 -1 62 -2 glass replace air
execute in the_end run fill -2 62 -1 2 62 1 glass replace air
