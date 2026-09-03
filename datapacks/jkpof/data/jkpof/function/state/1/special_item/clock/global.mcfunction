# 消耗和冷却
clear @s clock[custom_data~{jkpof: ["clock"]}] 1
scoreboard players set @s jkpof.cd 5
playsound block.note_block.hat block @a ~ ~ ~ 20

tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {selector: "@s"}, " ", {storage: "jk:pof", interpret: true, nbt: "txt.game.ed.use", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.clock.name", color: "gold"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "green"}]

execute if score #prop.clock.freeze jkpof.int matches 0 store result score #prop.clock.random jkpof.int run random value 1..4
execute if score #prop.clock.freeze jkpof.int matches 1 store result score #prop.clock.random jkpof.int run random value 1..3

execute if score #prop.clock.random jkpof.int matches 1 run scoreboard players add @e[type=#jkpof:mobs] jkpof.freeze 600
execute if score #prop.clock.random jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.clock.lore.p1", color: "aqua"}]

execute if score #prop.clock.random jkpof.int matches 2 run time add 6000
execute if score #prop.clock.random jkpof.int matches 2 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.clock.lore.p2", color: "aqua"}]

execute if score #prop.clock.random jkpof.int matches 3 run scoreboard players add #prop.clock.freeze jkpof.int 1
execute if score #prop.clock.random jkpof.int matches 3 if score #prop.clock.freeze jkpof.int matches 2.. run scoreboard players set #prop.clock.freeze jkpof.int 0
execute if score #prop.clock.random jkpof.int matches 3 if score #prop.clock.freeze jkpof.int matches 0 run gamerule advance_time true
execute if score #prop.clock.random jkpof.int matches 3 if score #prop.clock.freeze jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.time_set.freeze.0", color: "aqua"}]
execute if score #prop.clock.random jkpof.int matches 3 if score #prop.clock.freeze jkpof.int matches 1 run gamerule advance_time false
execute if score #prop.clock.random jkpof.int matches 3 if score #prop.clock.freeze jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.time_set.freeze.1", color: "aqua"}]

execute if score #prop.clock.random jkpof.int matches 4 run scoreboard players add #prop.clock.rate jkpof.int 1
execute if score #prop.clock.random jkpof.int matches 4 if score #prop.clock.rate jkpof.int matches 4.. run scoreboard players set #prop.clock.rate jkpof.int 1
execute if score #prop.clock.random jkpof.int matches 4 if score #prop.clock.rate jkpof.int matches 1 run time rate 1
execute if score #prop.clock.random jkpof.int matches 4 if score #prop.clock.rate jkpof.int matches 2 run time rate 10
execute if score #prop.clock.random jkpof.int matches 4 if score #prop.clock.rate jkpof.int matches 3 run time rate 100
execute if score #prop.clock.random jkpof.int matches 4 if score #prop.clock.rate jkpof.int matches 1 run scoreboard players set #prop.clock.rate.show jkpof.int 1
execute if score #prop.clock.random jkpof.int matches 4 if score #prop.clock.rate jkpof.int matches 2 run scoreboard players set #prop.clock.rate.show jkpof.int 10
execute if score #prop.clock.random jkpof.int matches 4 if score #prop.clock.rate jkpof.int matches 3 run scoreboard players set #prop.clock.rate.show jkpof.int 100
execute if score #prop.clock.random jkpof.int matches 4 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.clock.cur_rate", color: "aqua"}, {score: {name: "#prop.clock.rate.show", objective: "jkpof.int"}, color: "gold"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot", color: "aqua"}]
