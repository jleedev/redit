# What's a chunk? It's something you can work with. What's it made of?
# Other chunks.
#
# This is a high-level structure that represents some semantic unit of
# text. Maybe it's a paragraph; maybe a sentence; maybe an intonation
# unit or a line of code or a variable or a word or syllable.
#
# The weird thing is that chunks aren't always hierarchical; while it is
# tempting to draw a tree that goes from sentence to intonation unit to
# word to syllable to character (or something asinine like that), this
# is not always valid; sometimes words span intonation units, sometimes
# the other way around.
#
# Maybe a chunk is actually just a rope that can be pulled apart on the
# fly.

module Redit

class Chunk

end

end
