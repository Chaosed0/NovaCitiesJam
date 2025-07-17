INCLUDE Functions.ink
INCLUDE Intro.ink
INCLUDE Faisal.ink
INCLUDE Yousef.ink
INCLUDE LiYan.ink





-> Main

=== Main ===
{debug:
 - false: ->FullGame
}

~ SEED_RANDOM(235)

- (top)

 + [Full] -> FullGame ->
 + [LiYan]
 ++ [LiYan_Full] -> LiYan ->
 ++ [LiYan_1] -> LiYan.First ->
 ++ [LiYan_2] -> LiYan.Second ->
 ++ [LiYan_3] -> LiYan.Third ->

- -> top


=== FullGame ===

-> Intro ->
-> LiYan ->

-> END
