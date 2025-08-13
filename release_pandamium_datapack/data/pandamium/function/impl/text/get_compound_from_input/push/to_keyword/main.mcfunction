data modify storage pandamium:temp stack[-2].value set from storage pandamium:temp stack[-1].value
data modify storage pandamium:temp stack[-2].lines set from storage pandamium:temp stack[-1].lines
data remove storage pandamium:temp stack[-1]
