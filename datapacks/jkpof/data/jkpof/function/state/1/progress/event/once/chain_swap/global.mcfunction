# 此处代码参考：龙腾猫跃-《方块竞技场》-突变-连锁换位
tag @a[scores={jkpof.state=2}] add jkpof_swap_player

# 每人召唤一个
execute as @a[tag=jkpof_swap_player] at @s summon marker run function jkpof:state/1/progress/event/once/chain_swap/marker

# 传送并清除
execute as @a[tag=jkpof_swap_player] at @s run function jkpof:state/1/progress/event/once/chain_swap/player

# 音效
playsound block.beacon.power_select block @a 0 1000000 0 10000000
playsound entity.enderman.teleport block @a 0 1000000 0 10000000

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
