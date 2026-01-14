# 大厅保护
execute positioned 0 64 -100 run kill @e[type=!#jkpof:safe, distance=..40]

# 开始前准备
execute if score #before_start jkpof.int matches 1.. run function jkpof:state/1/before_start/ing

# 游戏总时长
execute if score #before_start jkpof.int matches 0 run scoreboard players add #time_last jkpof.int 1

# 给资源
scoreboard players remove #time_res jkpof.int 1
execute if score #time_res jkpof.int matches ..0 run function jkpof:state/1/give/start

# 复活信标
execute as @e[type=item] if items entity @s container.0 player_head at @s if block ~ ~-1 ~ beacon unless block ~ ~-1 ~ beacon{Levels: 0} if data entity @s Item.components."minecraft:profile" run function jkpof:state/1/special_item/respawn/global

# 清理掉落物
scoreboard players remove #trash jkpof.int 1
execute if score #trash jkpof.int matches ..0 run kill @e[type=item]
execute if score #trash jkpof.int matches ..0 run tellraw @a [{storage: "jk:pof", nbt: "txt.BOF.show", color: "green"}, {storage: "jk:pof", nbt: "txt.BOF.clean.ed", color: "yellow"}]
execute if score #trash jkpof.int matches ..0 run scoreboard players set #trash jkpof.int 90
execute unless score #trash jkpof.int matches 31.. unless score #trash jkpof.int matches 11..29 unless score #trash jkpof.int matches ..9 run tellraw @a [{storage: "jk:pof", nbt: "txt.BOF.show", color: "green"}, {storage: "jk:pof", nbt: "txt.BOF.clean.countdown", color: "yellow"}, {score: {name: "#trash", objective: "jkpof.int"}, color: "red"}, {storage: "jk:pof", nbt: "txt.seconds", color: "yellow"}, {storage: "jk:pof", nbt: "txt.char.exclamation", color: "yellow"}]

# 屏障展示实体-限高
execute as @e[type=item_display, tag=jkpof_barrier, limit=1, scores={jkpof.int=1..}] at @s run function jkpof:state/1/height_limit/barrier_tp

# 玩家
execute as @a[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/sec1_player

# 旁观者
effect give @a[gamemode=spectator] night_vision infinite 0 true

# 进度条
execute if score #event_ctrl_real jkpof.int matches 1 run function jkpof:state/1/progress/sec1
