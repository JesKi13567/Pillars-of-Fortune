# 检查投票人数是否大于一半
execute store result score #players_spec jkpof.int if entity @a[gamemode=spectator]
execute store result score #event_vote_players jkpof.int if entity @a[scores={jkpof.vote=1..8}, gamemode=spectator]
scoreboard players operation #event_vote_players jkpof.int *= #2 jkpof.int
execute if score #event_vote_players jkpof.int matches 0 run tellraw @a[gamemode=spectator] [{storage: "jk:pof", nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", nbt: "txt.VOF.end.no", color: "green"}]
execute if score #event_vote_players jkpof.int matches 1.. if score #event_vote_players jkpof.int < #players_spec jkpof.int run tellraw @a[gamemode=spectator] [{storage: "jk:pof", nbt: "txt.VOF.show", color: "aqua"}, {storage: "jk:pof", nbt: "txt.VOF.end.not_enough", color: "green"}]
execute if score #event_vote_players jkpof.int matches 1.. if score #event_vote_players jkpof.int >= #players_spec jkpof.int run function jkpof:state/1/progress/vote/check

scoreboard players reset * jkpof.vote
