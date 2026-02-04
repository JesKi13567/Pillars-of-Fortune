scoreboard players reset @s jkpof.death
gamemode spectator @s
scoreboard players add #trash jkpof.int 30

# 死前放下的刷怪蛋
function jkpof:state/1/special_item/spawn_egg/player

# 获取完成击杀的玩家
scoreboard players operation @a jkpof.damage.temp = @s jkpof.damage.source.real
execute as @a run scoreboard players operation @s jkpof.damage.temp -= @s jkpof.id
tag @p[scores={jkpof.damage.temp=0}, team=!jkpof.spec] add jkpof_murder
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
function jkpof:state/1/hurt/sub/forgive

# 记录死亡点
scoreboard players set @s jkpof.tp 1
