## 游戏中
# 变成旁观
execute as @a[gamemode=!spectator] run function jkpof:state/1/spectator/tick1

# 检查人数
execute unless score #test_mode jkpof.int matches 1 if score #ctrl_team jkpof.int matches 0 run function jkpof:state/1/end/by_players
execute unless score #test_mode jkpof.int matches 1 if score #ctrl_team jkpof.int matches 1..2 run function jkpof:state/1/end/by_teams

# 事件
execute if score #event_ctrl_real jkpof.int matches 1 run function jkpof:state/1/progress/event/tick1

# 可堆叠物品
execute as @e[type=item, tag=!jkpof_item] run function jkpof:state/1/special_item/stack

# 玩家
execute as @a[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/tick1_player

# 箭
execute as @e[type=arrow, tag=!jkpof, nbt={inGround: true}] at @s run function jkpof:state/1/special_item/arrow/block
