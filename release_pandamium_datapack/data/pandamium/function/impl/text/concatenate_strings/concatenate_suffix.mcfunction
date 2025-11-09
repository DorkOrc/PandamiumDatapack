# arguments: prefix, suffix, separator

$data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".prefix set value "$(prefix)$(separator)$(suffix)"
