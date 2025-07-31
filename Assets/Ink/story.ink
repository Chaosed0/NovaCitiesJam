INCLUDE Functions.ink
INCLUDE Intro.ink
INCLUDE Fanias.ink
INCLUDE Yousef.ink
INCLUDE LiYan.ink
INCLUDE Shared.ink






-> Main

=== Main ===
{not debug: ->FullGame }

~ change_background("tmp-background")

~ SEED_RANDOM(235)

- (top)

 + [Full] -> FullGame ->
 + [Fanias]
 ++ [Fanias Full] -> Fanias ->
 ++ [Fanias 1] -> Fanias.First ->
 ++ [Fanias 2] -> Fanias.Second ->
 ++ [Fanias 3] -> Fanias.Third ->
 + [Yousef]
 ++ [Yousef Full] -> Yousef ->
 ++ [Yousef 1] -> Yousef.First ->
 ++ [Yousef 2] -> Yousef.Second ->
 ++ [Yousef 3] -> Yousef.Third ->
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
