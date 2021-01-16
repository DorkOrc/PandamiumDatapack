#recurse all items in the the Items tag
data modify storage pandamium:remove_nbt Items append from storage pandamium:remove_nbt Items[-2][-1].tag.Items
data modify storage pandamium:remove_nbt Items append value []

#"pandamium:remove_nbt Items" is a list of item lists, e.g. [...,[a,b,c],[d,e,f]]
#a,b,c are the items that we are currently checking
#d,e,f are the items that we have already checked
#the found_item function moves the items from the one list to the other
function pandamium:misc/remove_nbt/items/check_item

#save the Items tag to the item
data modify storage pandamium:remove_nbt Items[-4][-1].tag.Items set from storage pandamium:remove_nbt Items[-1]
data remove storage pandamium:remove_nbt Items[-1]
data remove storage pandamium:remove_nbt Items[-1]
