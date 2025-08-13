# in: storage pandamium:text input
# out: storage pandamium:text output

# Is cheaper than "inclusive", but will break if the string contains newlines or horizontal tabs. 
# Can be used for item names and sign messages.
function pandamium:impl/text/flatten/main
