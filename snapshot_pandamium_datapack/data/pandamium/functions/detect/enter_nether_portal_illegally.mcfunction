fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace nether_portal
tellraw @s [{"text":"[Private Info]","color":"dark_red"},{"text":" You may not build a nether portal here! ","color":"red"},{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":["Building and entering a nether\nportal here may generate the\nexit portal within the protected\nspawn region. As this is\nconsidered griefing, it has been\ndisabled.\n\nIf you would like to enter the\nnether from the overworld, build\na portal further than 5000\nblocks away from the centre of\nthe world."]}}]

advancement revoke @s only pandamium:detect/enter_nether_portal_illegally
