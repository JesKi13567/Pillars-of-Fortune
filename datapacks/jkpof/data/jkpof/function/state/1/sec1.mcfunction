# 开始前准备
execute if score #before_start jkpof.int matches 1.. run function jkpof:state/1/before_start/ing

# 游戏总时长
execute if score #before_start jkpof.int matches 0 run scoreboard players add #time_last jkpof.int 1

# 给资源
scoreboard players remove #time_res jkpof.int 1
execute if score #time_res jkpof.int matches ..0 run function jkpof:state/1/give/start
title @a[scores={jkpof.state=2}, gamemode=survival] actionbar [{text: "物品给予：", color: "yellow"}, {score: {name: "#time_res", objective: "jkpof.int"}, color: "gold"}, "秒"]

# 快乐恶魂特判
execute as @e[type=happy_ghast] at @s run function jkpof:state/1/spawn_egg/happy_ghast

# 旁观者夜视
effect give @a[gamemode=spectator] night_vision infinite 0 true

# 道具使用冷却
scoreboard players remove @a[scores={jkpof.cd.fireball=1..}] jkpof.cd.fireball 1
scoreboard players remove @a[scores={jkpof.cd.platform=1..}] jkpof.cd.platform 1

# 清理掉落物
scoreboard players remove #trash jkpof.int 1
execute if score #trash jkpof.int matches ..0 run kill @e[type=item]
execute if score #trash jkpof.int matches ..0 run tellraw @a [{text: "【幸运之帚】", color: "green"}, {text: "掉落物已被清理！", color: "yellow"}]
execute if score #trash jkpof.int matches ..0 run scoreboard players set #trash jkpof.int 90
execute unless score #trash jkpof.int matches 31.. unless score #trash jkpof.int matches 11..29 unless score #trash jkpof.int matches 6..9 unless score #trash jkpof.int matches ..4 run tellraw @a [{text: "【幸运之帚】", color: "green"}, {text: "掉落物将在 ", color: "yellow"}, {score: {name: "#trash", objective: "jkpof.int"}, color: "red"}, {text: " 秒后被清理~", color: "yellow"}]

# 限高
function jkpof:state/1/height_limit/sec1

# 进度条
execute if score #ctrl_event jkpof.int matches 1 run function jkpof:state/1/progress/sec1
