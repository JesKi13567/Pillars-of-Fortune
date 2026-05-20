tellraw @s[scores={jkpof.leavegame=1..}] [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.spectator.by.leavegame", color: "green"}]
scoreboard players reset @s jkpof.leavegame

scoreboard players reset @s jkpof.death
scoreboard players set @s jkpof.state 3
gamemode spectator @s
clear @s
execute if score #event_broom jkpof.int matches 1 run scoreboard players add #event_broom.time jkpof.int 30
execute unless score #test_mode jkpof.int matches 1 run scoreboard players add @s jkpof.stats.death.all 1
execute unless score #test_mode jkpof.int matches 1 if score #1st_blood jkpof.int matches 1 run scoreboard players add @s jkpof.stats.death.1st 1

# 获取完成击杀的玩家
scoreboard players operation @a jkpof.damage.temp = @s jkpof.damage.source.real
execute as @a run scoreboard players operation @s jkpof.damage.temp -= @s jkpof.id
tag @a[limit=1, scores={jkpof.damage.temp=0}, team=!jkpof.spec] add jkpof_murder
tag @s add jkpof_victim
scoreboard players operation @s jkpof.damage.type.last = @s jkpof.damage.type.now

# 判断类型：0 自杀 1 他杀
scoreboard players set #death_type jkpof.int 1
execute unless entity @a[tag=jkpof_murder] run scoreboard players set #death_type jkpof.int 0

# 显示击杀信息
execute if score #death_type jkpof.int matches 0 run function jkpof:state/1/hurt/sub/death/suicide
execute if score #death_type jkpof.int matches 1 run function jkpof:state/1/hurt/sub/death/victim

# 清理
tag @a remove jkpof_murder
tag @s remove jkpof_victim
scoreboard players reset #1st_blood jkpof.int
function jkpof:state/1/hurt/sub/forgive

# 记录死亡点
scoreboard players set @s jkpof.tp 1
