data modify storage pandamium:temp push_source set value {type:"compound",value:{}}
data modify storage pandamium:temp push_source.value.text set from storage pandamium:temp stack[-1].value
data modify storage pandamium:temp push_source.lines set from storage pandamium:temp stack[-1].lines
