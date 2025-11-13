## 检查成为旁观者的条件
# 观众
execute unless score @s jkpof.id matches 1.. run function jkpof:state/1/spectator/not_in

# 死亡
execute as @s[scores={jkpof.id=1.., jkpof.death=1..}] run function jkpof:state/1/spectator/death

# 高度过低死亡
execute store result score @s jkpof.Y run data get entity @s Pos[1]
execute unless score #test_mode jkpof.int matches 1 run damage @s[scores={jkpof.Y=..-120}] 100 out_of_world
execute if score #test_mode jkpof.int matches 1 run tp @s[scores={jkpof.Y=..-100}] 0 118 0

# 道具使用冷却
scoreboard players remove @s[scores={jkpof.cd.ender_eye=1..}] jkpof.cd.ender_eye 1
