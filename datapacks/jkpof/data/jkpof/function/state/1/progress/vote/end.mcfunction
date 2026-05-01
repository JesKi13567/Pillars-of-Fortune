# 只要投票就有效
execute store result score #event_vote.players jkpof.int if entity @a[scores={jkpof.vote=1..11}, gamemode=spectator]
execute if score #event_vote.players jkpof.int matches 0 run tellraw @a[gamemode=spectator] [{storage: "jk:pof", interpret: true, nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.VOF.end.no", color: "green"}]
execute if score #event_vote.players jkpof.int matches 1.. run function jkpof:state/1/progress/vote/check

scoreboard players reset * jkpof.vote
scoreboard players remove #event_vote.last jkpof.int 1
