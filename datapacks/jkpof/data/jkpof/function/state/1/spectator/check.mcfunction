## 检查成为旁观者的条件
# 观众
execute unless score @s jkpof.id matches 1.. run function jkpof:state/1/spectator/not_in

# 死亡
execute as @s[scores={jkpof.id=1.., jkpof.death=1..}] run function jkpof:state/1/spectator/death

# 高度过低死亡
execute store result score @s jkpof.Y run data get entity @s Pos[1]
damage @s[scores={jkpof.Y=..-120}] 100 out_of_world

# 冷却
scoreboard players remove @a[scores={jkpof.cd.fireball=1..}] jkpof.cd.fireball 1
