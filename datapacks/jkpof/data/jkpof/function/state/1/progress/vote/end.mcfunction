# 检查投票人数是否大于一半
execute store result score #players_spec jkpof.int if entity @a[gamemode=spectator]
execute store result score #event_vote_players jkpof.int if entity @a[scores={jkpof.vote=1..6}, gamemode=spectator]
scoreboard players operation #event_vote_players jkpof.int *= #2 jkpof.int
execute if score #event_vote_players jkpof.int matches 0 run tellraw @a[gamemode=spectator] [{text: "【幸运之票】", color: "aqua"}, {text: "无人投票。", color: "green"}]
execute if score #event_vote_players jkpof.int matches 1.. if score #event_vote_players jkpof.int < #players_spec jkpof.int run tellraw @a[gamemode=spectator] [{text: "【幸运之票】", color: "aqua"}, {text: "观众投票人数不足一半，投票无效！", color: "green"}]
execute if score #event_vote_players jkpof.int matches 1.. if score #event_vote_players jkpof.int >= #players_spec jkpof.int run function jkpof:state/1/progress/vote/check

scoreboard players reset * jkpof.vote
