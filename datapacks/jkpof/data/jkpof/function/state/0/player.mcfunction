# 状态
scoreboard players set @s jkpof.state 1
execute if block ~ ~-1 ~ light_gray_concrete run scoreboard players set @s jkpof.state 0
execute if block ~ ~-2 ~ light_gray_concrete run scoreboard players set @s jkpof.state 0

title @s[scores={jkpof.state=0}] actionbar {text: "你将成为观众。", color: "gray"}
title @s[scores={jkpof.state=1}] actionbar {text: "你将成为玩家！", color: "green"}

scoreboard players set @s jkpof.team 0
team leave @s

execute if score #ctrl_team jkpof.int matches 1 run function jkpof:state/0/player_team
