scoreboard players set @s jkpof.state 3
scoreboard players reset @s jkpof.leavegame
gamemode spectator @s
tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.spectator.by.leavegame", color: "green"}]
