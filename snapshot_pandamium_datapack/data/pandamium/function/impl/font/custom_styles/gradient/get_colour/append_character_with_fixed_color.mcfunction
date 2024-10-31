# arguments: colour_code

$data modify storage pandamium:text compound.extra append value {color:"$(colour_code)"}
data modify storage pandamium:text compound.extra[-1].text set from storage pandamium:text characters[0]
