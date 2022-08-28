execute if entity @s[team=donator] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;10944679]}],Flight:1b}}}}
execute if entity @s[team=guest] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;10987431]}],Flight:1b}}}}
execute if entity @s[team=player] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;5569364]}],Flight:1b}}}}
execute if entity @s[team=member] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;42752]}],Flight:1b}}}}
execute if entity @s[team=elder] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;5569531]}],Flight:1b}}}}
execute if entity @s[team=veteran] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;42919]}],Flight:1b}}}}
execute if entity @s[team=elite] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;5526779]}],Flight:1b}}}}
execute if entity @s[team=helper] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;16513876]}],Flight:1b}}}}
execute if entity @s[team=mod] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;16492288]}],Flight:1b}}}}
execute if entity @s[team=srmod] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;16477952]}],Flight:1b}}}}
execute if entity @s[team=admin] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;16471124]}],Flight:1b}}}}
execute if entity @s[team=owner] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;10944512]}],Flight:1b}}}}
execute if entity @s[team=vip] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Trail:1b,Colors:[I;167]}],Flight:1b}}}}

playsound entity.firework_rocket.launch player @a[distance=..16] ~ ~ ~ 0.25 2
