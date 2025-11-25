scoreboard players reset @s jkpof.death
gamemode spectator @s
tellraw @s [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.spectator.by.death", color: "green"}]
scoreboard players add #trash jkpof.int 30
