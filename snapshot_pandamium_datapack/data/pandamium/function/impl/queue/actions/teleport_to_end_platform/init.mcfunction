execute in the_end unless loaded 100 48 0 run return 0
execute in the_end unless loaded 100 48 -1 run return 0

execute in the_end unless block 100 48 0 bedrock run return 0
execute in the_end unless block 100 49 0 moving_piston run return 0
execute in the_end unless block 100 50 0 moving_piston run return 0

data modify storage pandamium:queue selected.entry.meta.cancel set value 1b
