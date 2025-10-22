## 游戏中
# 变成旁观
execute as @a[gamemode=!spectator] run function jkpof:state/1/spectator/check

# 检查人数
execute store result score #players jkpof.int if entity @a[scores={jkpof.state=2}, gamemode=survival]
execute if score #players jkpof.int matches ..1 unless score #test_mode jkpof.int matches 1 run function jkpof:state/1/end

# 突变
function jkpof:state/1/progress/event/tick1
