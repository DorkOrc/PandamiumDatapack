# guest
team add guest
team modify guest prefix "Guest | "
team modify guest color gray
team modify guest seeFriendlyInvisibles false

team add guest_idle
team modify guest_idle prefix "Guest | "
team modify guest_idle suffix {"text":" [Idle]","color":"gray"}
team modify guest_idle color gray
team modify guest_idle seeFriendlyInvisibles false

team add guest_afk
team modify guest_afk prefix "Guest | "
team modify guest_afk suffix {"text":" [AFK]","color":"gray"}
team modify guest_afk color gray
team modify guest_afk seeFriendlyInvisibles false

# player
team add player
team modify player prefix "Player | "
team modify player color green
team modify player seeFriendlyInvisibles false

team add player_idle
team modify player_idle prefix "Player | "
team modify player_idle suffix {"text":" [Idle]","color":"gray"}
team modify player_idle color green
team modify player_idle seeFriendlyInvisibles false

team add player_afk
team modify player_afk prefix "Player | "
team modify player_afk suffix {"text":" [AFK]","color":"gray"}
team modify player_afk color green
team modify player_afk seeFriendlyInvisibles false

# member
team add member
team modify member prefix "Member | "
team modify member color dark_green
team modify member seeFriendlyInvisibles false

team add member_idle
team modify member_idle prefix "Member | "
team modify member_idle suffix {"text":" [Idle]","color":"gray"}
team modify member_idle color dark_green
team modify member_idle seeFriendlyInvisibles false

team add member_afk
team modify member_afk prefix "Member | "
team modify member_afk suffix {"text":" [AFK]","color":"gray"}
team modify member_afk color dark_green
team modify member_afk seeFriendlyInvisibles false

# elder
team add elder
team modify elder prefix "Elder | "
team modify elder color aqua
team modify elder seeFriendlyInvisibles false

team add elder_idle
team modify elder_idle prefix "Elder | "
team modify elder_idle suffix {"text":" [Idle]","color":"gray"}
team modify elder_idle color aqua
team modify elder_idle seeFriendlyInvisibles false

team add elder_afk
team modify elder_afk prefix "Elder | "
team modify elder_afk suffix {"text":" [AFK]","color":"gray"}
team modify elder_afk color aqua
team modify elder_afk seeFriendlyInvisibles false

# veteran
team add veteran
team modify veteran prefix "Veteran | "
team modify veteran color dark_aqua
team modify veteran seeFriendlyInvisibles false

team add veteran_idle
team modify veteran_idle prefix "Veteran | "
team modify veteran_idle suffix {"text":" [Idle]","color":"gray"}
team modify veteran_idle color dark_aqua
team modify veteran_idle seeFriendlyInvisibles false

team add veteran_afk
team modify veteran_afk prefix "Veteran | "
team modify veteran_afk suffix {"text":" [AFK]","color":"gray"}
team modify veteran_afk color dark_aqua
team modify veteran_afk seeFriendlyInvisibles false

# elite
team add elite
team modify elite prefix "Elite | "
team modify elite color blue
team modify elite seeFriendlyInvisibles false

team add elite_idle
team modify elite_idle prefix "Elite | "
team modify elite_idle suffix {"text":" [Idle]","color":"gray"}
team modify elite_idle color blue
team modify elite_idle seeFriendlyInvisibles false

team add elite_afk
team modify elite_afk prefix "Elite | "
team modify elite_afk suffix {"text":" [AFK]","color":"gray"}
team modify elite_afk color blue
team modify elite_afk seeFriendlyInvisibles false

# donator
team add donator
team modify donator prefix "Donator | "
team modify donator color dark_purple
team modify donator seeFriendlyInvisibles false

team add donator_idle
team modify donator_idle prefix "Donator | "
team modify donator_idle suffix {"text":" [Idle]","color":"gray"}
team modify donator_idle color dark_purple
team modify donator_idle seeFriendlyInvisibles false

team add donator_afk
team modify donator_afk prefix "Donator | "
team modify donator_afk suffix {"text":" [AFK]","color":"gray"}
team modify donator_afk color dark_purple
team modify donator_afk seeFriendlyInvisibles false

# vip
team add vip
team modify vip prefix "VIP | "
team modify vip color dark_blue
team modify vip seeFriendlyInvisibles false

team add vip_idle
team modify vip_idle prefix "VIP | "
team modify vip_idle suffix {"text":" [Idle]","color":"gray"}
team modify vip_idle color dark_blue
team modify vip_idle seeFriendlyInvisibles false

team add vip_afk
team modify vip_afk prefix "VIP | "
team modify vip_afk suffix {"text":" [AFK]","color":"gray"}
team modify vip_afk color dark_blue
team modify vip_afk seeFriendlyInvisibles false

# helper
team add helper
team modify helper prefix "Helper | "
team modify helper color yellow
team modify helper seeFriendlyInvisibles false

team add helper_idle
team modify helper_idle prefix "Helper | "
team modify helper_idle suffix {"text":" [Idle]","color":"gray"}
team modify helper_idle color yellow
team modify helper_idle seeFriendlyInvisibles false

team add helper_afk
team modify helper_afk prefix "Helper | "
team modify helper_afk suffix {"text":" [AFK]","color":"gray"}
team modify helper_afk color yellow
team modify helper_afk seeFriendlyInvisibles false

# mod
team add mod
team modify mod prefix "Mod | "
team modify mod color gold
team modify mod seeFriendlyInvisibles false

team add mod_idle
team modify mod_idle prefix "Mod | "
team modify mod_idle suffix {"text":" [Idle]","color":"gray"}
team modify mod_idle color gold
team modify mod_idle seeFriendlyInvisibles false

team add mod_afk
team modify mod_afk prefix "Mod | "
team modify mod_afk suffix {"text":" [AFK]","color":"gray"}
team modify mod_afk color gold
team modify mod_afk seeFriendlyInvisibles false

# srmod
team add srmod
team modify srmod prefix [{"text":"Sr. Mod","bold":true},{"text":" | ","bold":false}]
team modify srmod color gold
team modify srmod seeFriendlyInvisibles false

team add srmod_idle
team modify srmod_idle prefix [{"text":"Sr. Mod","bold":true},{"text":" | ","bold":false}]
team modify srmod_idle suffix {"text":" [Idle]","color":"gray"}
team modify srmod_idle color gold
team modify srmod_idle seeFriendlyInvisibles false

team add srmod_afk
team modify srmod_afk prefix [{"text":"Sr. Mod","bold":true},{"text":" | ","bold":false}]
team modify srmod_afk suffix {"text":" [AFK]","color":"gray"}
team modify srmod_afk color gold
team modify srmod_afk seeFriendlyInvisibles false

team add srmod_hidden
team modify srmod_hidden prefix [{"text":"Sr. Mod","bold":true},{"text":" | ","bold":false}]
team modify srmod_hidden color gold
team modify srmod_hidden seeFriendlyInvisibles false
team modify srmod_hidden collisionRule never

# admin
team add admin
team modify admin prefix [{"text":"Admin","bold":true},{"text":" | ","bold":false}]
team modify admin color red
team modify admin seeFriendlyInvisibles false

team add admin_idle
team modify admin_idle prefix [{"text":"Admin","bold":true},{"text":" | ","bold":false}]
team modify admin_idle suffix {"text":" [Idle]","color":"gray"}
team modify admin_idle color red
team modify admin_idle seeFriendlyInvisibles false

team add admin_afk
team modify admin_afk prefix [{"text":"Admin","bold":true},{"text":" | ","bold":false}]
team modify admin_afk suffix {"text":" [AFK]","color":"gray"}
team modify admin_afk color red
team modify admin_afk seeFriendlyInvisibles false

team add admin_hidden
team modify admin_hidden prefix [{"text":"Admin","bold":true},{"text":" | ","bold":false}]
team modify admin_hidden color red
team modify admin_hidden seeFriendlyInvisibles false
team modify admin_hidden collisionRule never

# owner
team add owner
team modify owner prefix [{"text":"Owner","bold":true},{"text":" | ","bold":false}]
team modify owner color dark_red
team modify owner seeFriendlyInvisibles false

team add owner_idle
team modify owner_idle prefix [{"text":"Owner","bold":true},{"text":" | ","bold":false}]
team modify owner_idle suffix {"text":" [Idle]","color":"gray"}
team modify owner_idle color dark_red
team modify owner_idle seeFriendlyInvisibles false

team add owner_afk
team modify owner_afk prefix [{"text":"Owner","bold":true},{"text":" | ","bold":false}]
team modify owner_afk suffix {"text":" [AFK]","color":"gray"}
team modify owner_afk color dark_red
team modify owner_afk seeFriendlyInvisibles false

team add owner_hidden
team modify owner_hidden prefix [{"text":"Owner","bold":true},{"text":" | ","bold":false}]
team modify owner_hidden color dark_red
team modify owner_hidden seeFriendlyInvisibles false
team modify owner_hidden collisionRule never
