INCLUDE Functions.ink
INCLUDE Intro.ink
INCLUDE Fanias.ink
INCLUDE Yousef.ink
INCLUDE LiYan.ink
INCLUDE Shared.ink






-> Main

=== Main ===
{not debug: ->FullGame }

~ SEED_RANDOM(235)

- (top)

 + [Full] -> FullGame ->
 + [Fanias]
 ++ [Fanias Full] -> LiYan ->
 ++ [Fanias 1] -> LiYan.First ->
 ++ [Fanias 2] -> LiYan.Second ->
 ++ [Fanias 3] -> LiYan.Third ->
 + [Yousef]
 ++ [Yousef Full] -> LiYan ->
 ++ [Yousef 1] -> LiYan.First ->
 ++ [Yousef 2] -> LiYan.Second ->
 ++ [Yousef 3] -> LiYan.Third ->
 + [LiYan]
 ++ [LiYan Full] -> LiYan ->
 ++ [LiYan 1] -> LiYan.First ->
 ++ [LiYan 2] -> LiYan.Second ->
 ++ [LiYan 3] -> LiYan.Third ->

- -> top


=== FullGame ===

-> Intro ->
-> next_visit ->
-> next_visit ->
-> next_visit ->
-> next_visit ->
-> next_visit ->
-> next_visit ->
-> next_visit ->
-> next_visit ->
-> next_visit ->
-> LiYan.Farewell ->
-> Yousef.Farewell ->
-> Fanias.Farewell ->
-> Finale ->

-> END
