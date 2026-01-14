# 状态
scoreboard players set @s jkpof.state 1
execute if block ~ 63 ~ light_gray_concrete run scoreboard players set @s jkpof.state 0

title @s[scores={jkpof.state=0}] actionbar {storage: "jk:pof", nbt: "txt.lobby.will_be.1.spectator", color: "gray"}
title @s[scores={jkpof.state=1}] actionbar {storage: "jk:pof", nbt: "txt.lobby.will_be.1.player", color: "green"}

scoreboard players set @s jkpof.team 0
team leave @s

execute if score #ctrl_team jkpof.int matches 1 run function jkpof:state/0/player/team
