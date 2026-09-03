# 此处代码参考：龙腾猫跃-《方块竞技场》-突变-连锁换位
tag @a[scores={jkpof.state=2}] add jkpof_swap_player
execute if score #event_plus_6 jkpof.int matches 1 run tag @e[type=#jkpof:mobs] add jkpof_swap_player
tag @e[type=#jkpof:mobs_and_player, tag=jkpof_swap_player] add jkpof_swap_entity

# 每人召唤一个
scoreboard players reset * jkpof.cs.id
scoreboard players reset #cs_temp jkpof.int
execute as @e[type=#jkpof:mobs_and_player, tag=jkpof_swap_player, sort=random] store result score @s jkpof.cs.id run scoreboard players add #cs_temp jkpof.int 1
execute as @e[type=#jkpof:mobs_and_player, tag=jkpof_swap_player] at @s summon marker run function jkpof:state/1/progress/event/6_chain_swap/marker

# 传送并清除
execute as @e[type=#jkpof:mobs_and_player, tag=jkpof_swap_player] at @s run function jkpof:state/1/progress/event/6_chain_swap/player
tag @e[type=#jkpof:mobs_and_player, tag=jkpof_swap_entity] remove jkpof_swap_entity

# 音效
playsound block.beacon.power_select block @a 0 1000000 0 10000000
playsound entity.enderman.teleport block @a 0 1000000 0 10000000

execute if score #event_plus_6 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
execute if score #event_plus_6 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.chain_swap.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
