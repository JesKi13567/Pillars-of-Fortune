execute if score #death_note.fail jkpof.int matches 1 run tellraw @s ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.death_note.name", color: "dark_red"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.death_note.fail.p1", color: "red"}]
execute if score #death_note.fail jkpof.int matches 2 run tellraw @s ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.death_note.name", color: "dark_red"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.death_note.fail.p2", color: "red"}]

execute at @s run playsound entity.villager.no block @s
