execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:axolotl'} run summon axolotl ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:cat'} run summon cat ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:cave_spider'} run summon cave_spider ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:chicken'} run summon chicken ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:dolphin'} run summon dolphin ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:donkey'} run summon donkey ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:fox'} run summon fox ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:glow_squid'} run summon glow_squid ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:goat'} run summon goat ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:horse'} run summon horse ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:llama'} run summon llama ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:mooshroom'} run summon mooshroom ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:mule'} run summon mule ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:ocelot'} run summon ocelot ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:panda'} run summon panda ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:parrot'} run summon parrot ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:polar_bear'} run summon polar_bear ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:shulker'} run summon shulker ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:skeleton_horse'} run summon skeleton_horse ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:squid'} run summon squid ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:strider'} run summon strider ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:trader_llama'} run summon trader_llama ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:turtle'} run summon turtle ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:villager'} run summon villager ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:wandering_trader'} run summon wandering_trader ~ ~ ~ {Tags:['store_pet.spawned']}
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet{id:'minecraft:wolf'} run summon wolf ~ ~ ~ {Tags:['store_pet.spawned']}

execute as @e[type=#pandamium:storeables,limit=1,tag=store_pet.spawned] run function pandamium:misc/store_pet/transfer_nbt_to_pet
