$tellraw @a[tag=source,limit=1] [{"text":" ","color":"yellow"},{"text":"[INV]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to inspect ","color":"blue"},{"selector":"@s","color":"blue","bold":true},"'s\ninventory"]},"clickEvent":{"action":"run_command","value":"/trigger inventory set $(id)"}}," ",{"text":"[EC]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to inspect ","color":"blue"},{"selector":"@s","color":"blue","bold":true},"'s\nender chest"]},"clickEvent":{"action":"run_command","value":"/trigger enderchest set $(id)"}}," - ",{"selector":"@s"}]
