# 消耗和冷却
clear @s clock[custom_data={jkpof: ["clock"]}] 1
scoreboard players set @s jkpof.cd 20
playsound block.note_block.hat block @a ~ ~ ~ 20
tellraw @a ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {selector: "@s"}, " ", {storage: "jk:pof", nbt: "txt.game.ed.use", color: "green"}, {storage: "jk:pof", nbt: "txt.lobby.item.clock.name", color: "gold"}, {storage: "jk:pof", nbt: "txt.char.dot", color: "green"}]

time add 6000
