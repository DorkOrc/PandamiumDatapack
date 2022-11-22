data modify block 0 0 0 Text1 set value '[{"nbt":"Text1","block":"0 0 0","interpret":true},"\\n",{"nbt":"item.tag.Enchantments[0].id","storage":"pandamium:containers","color":"green"}," ",{"nbt":"item.tag.Enchantments[0].lvl","storage":"pandamium:containers","color":"gold"}]'

data remove storage pandamium:containers item.tag.Enchantments[0]
execute if data storage pandamium:containers item.tag.Enchantments[0] run function pandamium:containers/run/enchantments/iter
