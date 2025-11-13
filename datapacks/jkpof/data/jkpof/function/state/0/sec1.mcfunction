# 所有人
execute positioned 0 64 -100 as @a unless entity @s[distance=..40] run tp @s ~ ~ ~
gamemode adventure @a[gamemode=!creative]

# 清理
kill @e[type=!#jkpof:safe]

# 检查人数，开始游戏
execute unless score #start_flag jkpof.int matches 1 run scoreboard players set #countdown jkpof.int 10
execute if score #ctrl_team jkpof.int matches 0 run function jkpof:state/0/ready/check_players
execute if score #ctrl_team jkpof.int matches 1 run function jkpof:state/0/ready/check_teams
execute if score #start_flag jkpof.int matches 1 run function jkpof:state/0/ready/counting
