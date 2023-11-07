# arguments: part_1, part_2

data remove storage pandamium:temp merge_lines[0][-1]
$data modify storage pandamium:temp merge_lines[0] append value "$(part_1)$(part_2)"
data remove storage pandamium:temp merge_lines[1][0]
data modify storage pandamium:temp merge_lines[0] append from storage pandamium:temp merge_lines[1][]
