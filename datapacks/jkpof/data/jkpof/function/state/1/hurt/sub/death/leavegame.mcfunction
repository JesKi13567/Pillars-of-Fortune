scoreboard players reset @s jkpof.leavegame
damage @s 100 out_of_world
tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.spectator.by.leavegame", color: "green"}]
