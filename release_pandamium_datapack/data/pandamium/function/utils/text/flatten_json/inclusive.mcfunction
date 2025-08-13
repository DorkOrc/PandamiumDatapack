# in: storage pandamium:text input
# out: storage pandamium:text output

# Is expensive, but works for all characters.
# Should only be used when there is a possibility of a newline or horizontal tab character in the text (e.g. book pages).
function pandamium:impl/text/flatten_inclusive/main
