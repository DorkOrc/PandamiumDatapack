execute if data storage pandamium:containers item.Slot store result storage pandamium:containers item.slot int 1 run data get storage pandamium:containers item.Slot
data remove storage pandamium:containers item.Slot

data modify storage pandamium:containers item merge from storage pandamium:containers item.item
data remove storage pandamium:containers item.item
