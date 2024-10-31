# arguments: red, green, blue

$data modify storage pandamium:text compound.extra append value {color:"#$(red)$(green)$(blue)"}
data modify storage pandamium:text compound.extra[-1].text set from storage pandamium:text characters[0]
