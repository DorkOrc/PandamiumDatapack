# arguments: attribute, uuid, modifier, custom_effect_name

$attribute @s $(attribute) modifier add $(uuid) "pandamium.custom_effect.$(custom_effect_name)" $(modifier)
#$tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Pandamium: Added attribute modifier $(uuid) to attribute $(attribute) of ","color":"gray","italic":true},{"selector":"@s"},"]"]
