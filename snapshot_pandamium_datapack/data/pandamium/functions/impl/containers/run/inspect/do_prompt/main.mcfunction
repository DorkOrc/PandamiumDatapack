execute if data storage pandamium:containers {source:'inventory'} run return run function pandamium:impl/containers/run/inspect/do_prompt/inventory
execute if data storage pandamium:containers {source:'enderchest'} run return run function pandamium:impl/containers/run/inspect/do_prompt/enderchest
execute if data storage pandamium:containers {source:'container'} run return run function pandamium:impl/containers/run/inspect/do_prompt/container

# else
tellraw @s ["",{"nbt":"inspect.prompt.prefix","storage":"pandamium:containers","interpret":true},{"nbt":"inspect.prompt.body","storage":"pandamium:containers","interpret":true,"color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Cannot inspect this slot!","color":"red"},"\n",{"nbt":"inspect.prompt.body_inspection_description","storage":"pandamium:containers","interpret":true}]}},{"nbt":"inspect.prompt.suffix","storage":"pandamium:containers","interpret":true}]
