# 冷却
scoreboard players set @s jkpof.cd 10
scoreboard players set @s jkpof.ray 200
tag @s add jkpof_immune_ray

# 射线
execute anchored eyes run function jkpof:state/1/special_item/spectral_hand/ray_loop
execute as @a[limit=1, scores={jkpof.state=2}, tag=jkpof_spectral_hand] run function jkpof:state/1/special_item/spectral_hand/0

scoreboard players set #spectral_hand.fail jkpof.int 0
execute unless entity @a[limit=1, scores={jkpof.state=2}, tag=jkpof_spectral_hand] run scoreboard players set #spectral_hand.fail jkpof.int 1
execute if score #spectral_hand.fail jkpof.int matches 1 run playsound entity.villager.no block @s
execute if score #spectral_hand.fail jkpof.int matches 1 run tellraw @s ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.spectral_hand.tellraw.fail.p0", color: "green"}]

# 成功才消耗
execute if score #spectral_hand.fail jkpof.int matches 0 run clear @s dead_bush[custom_data={jkpof: ["spectral_hand"]}] 1
execute if score #spectral_hand.fail jkpof.int matches 0 if score #spectral_hand.slot jkpof.int matches ..-1 run playsound entity.villager.no block @s
execute if score #spectral_hand.fail jkpof.int matches 0 if score #spectral_hand.slot jkpof.int matches ..-1 run tellraw @s ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.spectral_hand.tellraw.fail.p1", color: "green"}, {selector: "@a[limit=1, tag=jkpof_spectral_hand]"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.spectral_hand.tellraw.fail.p2", color: "green"}]

tag @a remove jkpof_spectral_hand
tag @a remove jkpof_immune_ray
