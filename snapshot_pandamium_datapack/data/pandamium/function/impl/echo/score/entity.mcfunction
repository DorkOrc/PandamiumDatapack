# arguments: objective

data modify storage pandamium:temp results append value [{color:"aqua",text:"???"},{color:"gray",text:" = "},{color:"gold",text:""}]

function do:entity/get_entity_repr
data modify storage pandamium:temp results[-1][0].text set from storage do:io output

$execute if score @s $(objective) = @s $(objective) store result storage pandamium:temp results[-1][2].text int 1 run scoreboard players get @s $(objective)
data modify storage pandamium:temp results[-1][2].text set string storage pandamium:temp results[-1][2].text
$execute unless score @s $(objective) = @s $(objective) run data modify storage pandamium:temp results[-1][2] set value {color:"red",text:"none"}
