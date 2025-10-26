# 位置
execute positioned 100 64 0 unless entity @s[distance=..20] run tp @s ~ ~ ~

# 状态
execute unless block ~ ~-1 ~ lime_concrete unless block ~ ~-2 ~ lime_concrete run scoreboard players set @s jkpof.state 0
execute if block ~ ~-1 ~ lime_concrete run scoreboard players set @s jkpof.state 1
execute if block ~ ~-2 ~ lime_concrete run scoreboard players set @s jkpof.state 1

title @s[scores={jkpof.state=0}] actionbar {text: "你将变为旁观。", color: "gray"}
title @s[scores={jkpof.state=1}] actionbar {text: "你将开始游戏！", color: "green"}
