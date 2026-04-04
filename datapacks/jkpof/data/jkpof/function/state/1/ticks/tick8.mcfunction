# 死亡玩家传送
execute positioned 0 120 0 as @a[limit=1, distance=..6, scores={jkpof.tp=1}] run function jkpof:state/1/hurt/sub/death/tp/record

# 检查人数
execute unless score #test_mode jkpof.int matches 1 if score #ctrl_team jkpof.int matches 0 run function jkpof:state/1/end/by_players
execute unless score #test_mode jkpof.int matches 1 if score #ctrl_team jkpof.int matches 1..2 run function jkpof:state/1/end/by_teams
