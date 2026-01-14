## 检查成为旁观者的条件
# 观众
execute unless score @s jkpof.id matches 1.. run function jkpof:state/1/spectator/not_in

# 死亡
execute as @s[scores={jkpof.id=1.., jkpof.death=1..}] run function jkpof:state/1/spectator/death

# 离开游戏
execute as @s[scores={jkpof.id=1.., jkpof.leavegame=1..}] run function jkpof:state/1/spectator/leavegame
